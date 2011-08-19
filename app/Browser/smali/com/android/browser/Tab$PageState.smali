.class Lcom/android/browser/Tab$PageState;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageState"
.end annotation


# instance fields
.field mFavicon:Landroid/graphics/Bitmap;

.field mIsBookmarkedSite:Ljava/lang/Boolean;

.field mLockIcon:Lcom/android/browser/Tab$LockIcon;

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "c"
    .parameter "incognito"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mIsBookmarkedSite:Ljava/lang/Boolean;

    .line 152
    if-eqz p2, :cond_0

    .line 153
    const-string v0, "browser:incognito"

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 154
    const v0, 0x7f09000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 159
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 161
    sget-object v0, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_UNSECURE:Lcom/android/browser/Tab$LockIcon;

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mLockIcon:Lcom/android/browser/Tab$LockIcon;

    .line 162
    return-void

    .line 156
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 157
    const v0, 0x7f09000d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "c"
    .parameter "incognito"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mIsBookmarkedSite:Ljava/lang/Boolean;

    .line 165
    iput-object p3, p0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 167
    invoke-static {p3}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_SECURE:Lcom/android/browser/Tab$LockIcon;

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mLockIcon:Lcom/android/browser/Tab$LockIcon;

    .line 172
    :goto_0
    if-eqz p4, :cond_1

    .line 173
    iput-object p4, p0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 178
    :goto_1
    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_UNSECURE:Lcom/android/browser/Tab$LockIcon;

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mLockIcon:Lcom/android/browser/Tab$LockIcon;

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
