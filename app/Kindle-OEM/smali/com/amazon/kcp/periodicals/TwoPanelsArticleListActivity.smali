.class public Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;
.super Lcom/amazon/kcp/periodicals/ArticleListActivity;
.source "TwoPanelsArticleListActivity.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;
.implements Lcom/amazon/kcp/periodicals/fragments/SectionListListener;
.implements Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;


# static fields
.field public static final ALL_SECTIONS_INDEX:I = 0x0

.field private static final BRIGHTNESS_COLORS_BUNDLE_KEY:Ljava/lang/String; = "BrightnessColorsOptions"

.field public static final FILTER_SECTION_SELECTED:Ljava/lang/String; = "filterSectionSelected"

.field private static final TEXT_SIZE_OPTION_KEY:Ljava/lang/String; = "TextSizeOptions"

.field private static isDualPane:Ljava/lang/Boolean;


# instance fields
.field protected brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

.field protected textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

.field private twoPanelView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->isDualPane:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;-><init>()V

    return-void
.end method

.method public static createIntentForPeriodicalLaunch(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 381
    invoke-static {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->isDualPanelPeriodicalViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    :goto_0
    return-object v0

    .line 388
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/periodicals/UnFilteredArticleListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private displayArticleListFragment(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const v4, 0x7f0c0011

    .line 237
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_1

    .line 242
    if-ne p1, v5, :cond_2

    move v0, p1

    .line 246
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 247
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 248
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 252
    :cond_0
    const-string v3, "filterSectionIndex"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    if-eqz p2, :cond_3

    if-eq v0, v5, :cond_3

    .line 258
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;-><init>()V

    .line 260
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 270
    :goto_1
    const/16 v0, 0x1003

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 271
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 273
    :cond_1
    return-void

    .line 242
    :cond_2
    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_0

    .line 265
    :cond_3
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;-><init>()V

    .line 267
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public static isDualPanelPeriodicalViewSupported(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, handled:Z
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->hideOverlay(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/ui/Hideable;)Z

    move-result v0

    .line 195
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 197
    invoke-super {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 199
    :cond_1
    return v0

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->hideOverlay(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/ui/Hideable;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getFragments()[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c00b4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    .line 279
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    .line 280
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c00d3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    .line 282
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 287
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    .line 288
    aput-object v1, v3, v4

    .line 289
    aput-object v0, v3, v5

    .line 290
    aput-object v2, v3, v6

    .line 291
    aput-object p0, v3, v7

    move-object v0, v3

    .line 306
    :goto_0
    return-object v0

    .line 293
    :cond_0
    if-eqz v2, :cond_1

    .line 295
    new-array v0, v7, [Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    .line 296
    aput-object v1, v0, v4

    .line 297
    aput-object v2, v0, v5

    .line 298
    aput-object p0, v0, v6

    goto :goto_0

    .line 302
    :cond_1
    new-array v0, v6, [Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    .line 303
    aput-object v1, v0, v4

    .line 304
    aput-object p0, v0, v5

    goto :goto_0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->twoPanelView:Landroid/view/View;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_0

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->hide()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->hide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 337
    invoke-super {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->hide()Z

    :goto_1
    move v0, v1

    .line 324
    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->hide()Z

    .line 322
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->showTextSizeOptions()Z

    goto :goto_1

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->hide()Z

    :goto_2
    move v0, v1

    .line 335
    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->hide()Z

    .line 333
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->showBrightnessTextColorOptions()Z

    goto :goto_2

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00f9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->hide()Z

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->hide()Z

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "TextSizeOptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setVisibility(I)V

    .line 177
    :cond_0
    const-string v0, "BrightnessColorsOptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->setVisibility(I)V

    .line 181
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0c0011

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 136
    .local v0, articlesList:Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0c00b4

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    .line 138
    .local v3, sectionListFragment:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;
    const/4 v1, 0x0

    .line 139
    .local v1, filterSections:Z
    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getSelectedIndex()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    move v1, v4

    .line 143
    :cond_0
    :goto_0
    const-string v4, "filterSectionSelected"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    instance-of v4, v0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;

    if-eqz v4, :cond_4

    .line 148
    check-cast v0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;

    .end local v0           #articlesList:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getCurrentlyDisplayedIndex()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 149
    .local v2, index:I
    const-string v4, "filterSectionIndex"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    .end local v2           #index:I
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    if-eqz v4, :cond_2

    .line 163
    const-string v4, "TextSizeOptions"

    iget-object v5, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->isShown()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string v4, "BrightnessColorsOptions"

    iget-object v5, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->isShown()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    :cond_2
    return-void

    .line 141
    .restart local v0       #articlesList:Landroid/support/v4/app/Fragment;
    :cond_3
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 154
    :cond_4
    if-eqz v3, :cond_1

    .line 156
    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getSelectedIndex()I

    move-result v2

    .line 157
    .restart local v2       #index:I
    const-string v4, "filterSectionIndex"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onSectionSelected(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->displayArticleListFragment(IZ)V

    .line 233
    return-void
.end method

.method public setColorMode(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 342
    const v1, 0x7f0c00d2

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, twoPanelView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 349
    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 355
    return-void
.end method

.method protected setTitleVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c00d3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;

    .line 399
    .local v0, title:Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;
    if-eqz v0, :cond_0

    .line 401
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    move v1, v2

    .line 402
    .local v1, visibility:I
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    .end local v1           #visibility:I
    :cond_0
    return-void

    .line 401
    :cond_1
    const/4 v2, 0x4

    move v1, v2

    goto :goto_0
.end method

.method protected setup(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const v6, 0x7f0c00b4

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 55
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f0c00d2

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->twoPanelView:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->twoPanelView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->twoPanelView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    :cond_0
    invoke-virtual {p0, v6}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    .line 71
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-direct {v1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;-><init>()V

    .line 75
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 81
    :cond_1
    const-string v3, "filterSectionIndex"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 85
    const/16 v2, 0x1003

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 86
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-object v0, v1

    .line 94
    :cond_2
    if-eqz p1, :cond_6

    .line 96
    const-string v1, "filterSectionIndex"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 97
    const-string v2, "filterSectionSelected"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    .line 102
    :goto_0
    if-eqz v0, :cond_3

    if-eq v2, v4, :cond_3

    .line 104
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "filterSectionIndex"

    if-eqz v1, :cond_4

    move v4, v2

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 114
    invoke-direct {p0, v2, v5}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->displayArticleListFragment(IZ)V

    .line 124
    :goto_2
    const v0, 0x7f0c00ab

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    .line 125
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    .line 126
    return-void

    :cond_4
    move v4, v5

    .line 104
    goto :goto_1

    .line 122
    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->displayArticleListFragment(IZ)V

    goto :goto_2

    :cond_6
    move v1, v5

    move v2, v4

    goto :goto_0
.end method
