.class public Lcom/android/browser/TitleBarBase;
.super Landroid/widget/LinearLayout;
.source "TitleBarBase.java"

# interfaces
.implements Lcom/android/browser/UrlInputView$UrlInputListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mBaseUi:Lcom/android/browser/BaseUi;

.field protected mFavicon:Landroid/widget/ImageView;

.field protected mGenericFavicon:Landroid/graphics/drawable/Drawable;

.field protected mInVoiceMode:Z

.field protected mLockIcon:Landroid/widget/ImageView;

.field protected mUiController:Lcom/android/browser/UiController;

.field protected mUrlInput:Lcom/android/browser/UrlInputView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/browser/TitleBarBase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/browser/TitleBarBase;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;)V
    .locals 2
    .parameter "context"
    .parameter "controller"
    .parameter "ui"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p2, p0, Lcom/android/browser/TitleBarBase;->mUiController:Lcom/android/browser/UiController;

    .line 56
    iput-object p3, p0, Lcom/android/browser/TitleBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/TitleBarBase;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 59
    return-void
.end method


# virtual methods
.method public getEmbeddedHeight()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/browser/TitleBarBase;->getHeight()I

    move-result v0

    return v0
.end method

.method public onAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "text"
    .parameter "extra"
    .parameter "source"

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/browser/TitleBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->requestFocus()Z

    .line 108
    iget-object v3, p0, Lcom/android/browser/TitleBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v3}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 109
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v2, i:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 111
    .local v0, action:Ljava/lang/String;
    const-string v3, "voice-search"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    .line 113
    const/4 p3, 0x0

    .line 117
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v3, "query"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    if-eqz p2, :cond_0

    .line 120
    const-string v3, "intent_extra_data_key"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_0
    if-eqz p3, :cond_1

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v1, appData:Landroid/os/Bundle;
    const-string v3, "source"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "app_data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    .end local v1           #appData:Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/android/browser/TitleBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3, v2}, Lcom/android/browser/UiController;->handleNewIntent(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/browser/TitleBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 129
    return-void

    .line 115
    :cond_2
    const-string v0, "android.intent.action.SEARCH"

    goto :goto_0
.end method

.method public onCopySuggestion(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/TitleBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/browser/TitleBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSelection(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/browser/TitleBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 134
    .local v0, currentTab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/TitleBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 135
    new-instance v1, Lcom/android/browser/TitleBarBase$1;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/TitleBarBase$1;-><init>(Lcom/android/browser/TitleBarBase;Lcom/android/browser/Tab;)V

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBarBase;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public setCurrentUrlIsBookmark(Z)V
    .locals 0
    .parameter "isBookmark"

    .prologue
    .line 158
    return-void
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 62
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 75
    sget-boolean v2, Lcom/android/browser/TitleBarBase;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/TitleBarBase;->mFavicon:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 76
    :cond_0
    const/4 v2, 0x3

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 77
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v4, -0x100

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    aput-object v3, v6, v2

    .line 78
    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const/4 v2, -0x1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 79
    .local v7, p:Landroid/graphics/drawable/PaintDrawable;
    aput-object v7, v6, v1

    .line 80
    if-nez p1, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/browser/TitleBarBase;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v8

    .line 85
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 88
    iget-object v1, p0, Lcom/android/browser/TitleBarBase;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void

    .line 83
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v8

    goto :goto_0
.end method

.method setInVoiceMode(Z)V
    .locals 0
    .parameter "inVoiceMode"

    .prologue
    .line 91
    return-void
.end method

.method setIncognitoMode(Z)V
    .locals 0
    .parameter "incognito"

    .prologue
    .line 93
    return-void
.end method

.method setLock(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/browser/TitleBarBase;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/TitleBarBase;->mLockIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_0
    if-nez p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/browser/TitleBarBase;->mLockIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBarBase;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/android/browser/TitleBarBase;->mLockIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method setProgress(I)V
    .locals 0
    .parameter "newProgress"

    .prologue
    .line 61
    return-void
.end method
