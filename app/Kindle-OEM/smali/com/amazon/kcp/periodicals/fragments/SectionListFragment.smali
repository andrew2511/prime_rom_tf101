.class public Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SectionListFragment.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;
    }
.end annotation


# static fields
.field private static final ALL_SECTIONS_ITEM:Ljava/lang/Object;


# instance fields
.field private appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private book:Lcom/amazon/kcp/reader/models/IBookDocument;

.field private clickListener:Lcom/amazon/kcp/periodicals/fragments/SectionListListener;

.field private colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

.field private listView:Landroid/widget/ListView;

.field private selectedIndex:I

.field private selectedView:Landroid/view/View;

.field private toc:Lcom/amazon/kcp/reader/models/IBookTOC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->ALL_SECTIONS_ITEM:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->listView:Landroid/widget/ListView;

    .line 51
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->selectedView:Landroid/view/View;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->selectedIndex:I

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->ALL_SECTIONS_ITEM:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Lcom/amazon/kcp/reader/models/IBookTOC;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->toc:Lcom/amazon/kcp/reader/models/IBookTOC;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->selectedIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->selectedIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Lcom/amazon/kcp/reader/models/ColorMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->selectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->selectedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Lcom/amazon/kcp/periodicals/fragments/SectionListListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->clickListener:Lcom/amazon/kcp/periodicals/fragments/SectionListListener;

    return-object v0
.end method

.method private refreshArticleViews()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->selectedIndex:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->listView:Landroid/widget/ListView;

    .line 176
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 177
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 179
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filterSectionIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->selectedIndex:I

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->toc:Lcom/amazon/kcp/reader/models/IBookTOC;

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->toc:Lcom/amazon/kcp/reader/models/IBookTOC;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;-><init>(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/ColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$1;-><init>(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 210
    if-eqz v0, :cond_1

    .line 212
    new-instance v1, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$2;-><init>(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 222
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 158
    check-cast p1, Lcom/amazon/kcp/periodicals/fragments/SectionListListener;

    .end local p1
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->clickListener:Lcom/amazon/kcp/periodicals/fragments/SectionListListener;

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 164
    const v0, 0x7f030034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getChangingConfigurations()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 232
    :cond_0
    return-void

    .line 230
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setColorMode(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 245
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->refreshArticleViews()V

    .line 247
    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 253
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .parameter "selectedIndex"

    .prologue
    .line 278
    iput p1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->selectedIndex:I

    .line 279
    return-void
.end method
