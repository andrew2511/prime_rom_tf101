.class public Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;
.super Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaHandwritingInputMode"
.end annotation


# instance fields
.field mFullScreenHandwritingState:Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    .line 1673
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1675
    new-instance v2, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;

    invoke-direct {v2, p0}, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;-><init>(Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mFullScreenHandwritingState:Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;

    .line 1678
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v2}, Lcom/nuance/xt9/input/InputMethods;->access$500(Lcom/nuance/xt9/input/InputMethods;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1679
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/xt9/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1680
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mDefaultEnabled:Z

    .line 1681
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1682
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mDefaultEnabled:Z

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1684
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;
    .locals 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mLayouts:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mLayouts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/InputMethods$Layout;

    move-object v0, p0

    .line 1717
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1689
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mDefaultEnabled:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 1693
    .local v0, enabled:Z
    :goto_0
    return v0

    .line 1689
    .end local v0           #enabled:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public saveAsCurrent()V
    .locals 3

    .prologue
    .line 1706
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->saveAsCurrent()V

    .line 1707
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1708
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1709
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1700
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1701
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1702
    return-void
.end method
