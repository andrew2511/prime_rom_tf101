.class public Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
.super Ljava/lang/Object;
.source "MarketIntentVO.java"


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field iconReference:I

.field intent:Ljava/lang/String;

.field intentName:Ljava/lang/String;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/app/Activity;Ljava/lang/String;)Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    .locals 4
    .parameter "activity"
    .parameter "action"

    .prologue
    .line 52
    invoke-static {p1, p2}, Lcom/nvidia/tegrazone/utils/NVUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 53
    .local v0, packageInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 54
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->setIntentName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->setIntent(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->setIconReference(I)V

    .line 58
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->getIntentName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->getIntentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->setText(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconReference()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->iconReference:I

    return v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->intentName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->icon:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method

.method public setIconReference(I)V
    .locals 0
    .parameter "iconReference"

    .prologue
    .line 27
    iput p1, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->iconReference:I

    .line 28
    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->intent:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setIntentName(Ljava/lang/String;)V
    .locals 0
    .parameter "intentName"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->intentName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->text:Ljava/lang/String;

    .line 22
    return-void
.end method
