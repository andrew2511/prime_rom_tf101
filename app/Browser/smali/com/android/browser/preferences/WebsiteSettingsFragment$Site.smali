.class Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/WebsiteSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Site"
.end annotation


# instance fields
.field private mFeatures:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mOrigin:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "origin"

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mIcon:Landroid/graphics/Bitmap;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    .line 92
    return-void
.end method

.method private hideHttp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 160
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 161
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method public addFeature(I)V
    .locals 2
    .parameter "feature"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    .line 96
    return-void
.end method

.method public getFeatureByIndex(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 125
    const/4 v1, -0x1

    .line 126
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v1, v2

    .line 128
    if-ne v1, p1, :cond_1

    move v2, v0

    .line 132
    :goto_2
    return v2

    .line 127
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_2
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public getFeatureCount()I
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 114
    :cond_1
    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getPrettyOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hideHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrettyTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hideHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasFeature(I)Z
    .locals 3
    .parameter "feature"

    .prologue
    const/4 v2, 0x1

    .line 103
    iget v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFeature(I)V
    .locals 2
    .parameter "feature"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    .line 100
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mIcon:Landroid/graphics/Bitmap;

    .line 145
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    .line 141
    return-void
.end method
