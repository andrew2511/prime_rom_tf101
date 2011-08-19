.class public Lcom/nuance/xt9/input/InputMethods$Layout;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# instance fields
.field private mDefaultEnabled:Z

.field public mDisplayLayoutName:Ljava/lang/String;

.field private mEnabledPrefKey:Ljava/lang/String;

.field public mLayoutId:I

.field public mLayoutResID:I

.field public mLayoutShiftResID:I

.field public mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1827
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$InputMode;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 1829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1830
    iput-object p2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 1831
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/xt9/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1832
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    .line 1833
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mDisplayLayoutName:Ljava/lang/String;

    .line 1834
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutResID:I

    .line 1836
    const/16 v2, 0x12

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutShiftResID:I

    .line 1838
    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mDefaultEnabled:Z

    .line 1840
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Layout;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods;->access$400(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->access$1000(Lcom/nuance/xt9/input/InputMethods$InputMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods;->access$400(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mEnabledPrefKey:Ljava/lang/String;

    .line 1846
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v2}, Lcom/nuance/xt9/input/InputMethods;->access$500(Lcom/nuance/xt9/input/InputMethods;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1847
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Layout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1848
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mDefaultEnabled:Z

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1850
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods;->access$600(Lcom/nuance/xt9/input/InputMethods;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getLanguageId()I
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    return v0
.end method

.method private getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method private getScreenOrientation()I
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods;->access$900(Lcom/nuance/xt9/input/InputMethods;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 1896
    instance-of v2, p1, Lcom/nuance/xt9/input/InputMethods$Layout;

    if-eqz v2, :cond_1

    .line 1897
    move-object v0, p1

    check-cast v0, Lcom/nuance/xt9/input/InputMethods$Layout;

    move-object v1, v0

    .line 1898
    .local v1, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    iget v2, v1, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    iget v3, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1900
    .end local v1           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :goto_0
    return v2

    .restart local v1       #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_0
    move v2, v4

    .line 1898
    goto :goto_0

    .end local v1           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_1
    move v2, v4

    .line 1900
    goto :goto_0
.end method

.method public geEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mEnabledPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 1871
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Layout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1872
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mDefaultEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public saveAsCurrent()V
    .locals 6

    .prologue
    .line 1857
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Layout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1860
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Layout;->getLanguageId()I

    move-result v1

    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Layout;->getLocale()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->access$1000(Lcom/nuance/xt9/input/InputMethods$InputMode;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Layout;->getScreenOrientation()I

    move-result v4

    iget v5, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    invoke-static/range {v0 .. v5}, Lcom/nuance/xt9/input/InputMethods;->saveKeyboardLayout(Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;II)V

    .line 1863
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1866
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Layout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1867
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$Layout;->mEnabledPrefKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1868
    return-void
.end method
