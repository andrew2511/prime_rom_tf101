.class public Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;
.super Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaAmbigInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    .line 1609
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1612
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v1}, Lcom/nuance/xt9/input/InputMethods;->access$500(Lcom/nuance/xt9/input/InputMethods;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1613
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1614
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1616
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 6

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1640
    .local v3, sp:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    .line 1641
    .local v2, hwrInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    const/4 v1, 0x0

    .line 1642
    .local v1, hwrEnabled:Z
    if-eqz v2, :cond_0

    .line 1643
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v1

    .line 1646
    :cond_0
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->mDefaultEnabled:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->isAtLeastOneLayoutIsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v0, v4

    .line 1650
    .local v0, enabled:Z
    :goto_0
    return v0

    .line 1646
    .end local v0           #enabled:Z
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public saveAsCurrent()V
    .locals 3

    .prologue
    .line 1620
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->saveAsCurrent()V

    .line 1624
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->mInputMode:Ljava/lang/String;

    const-string v2, "handwriting"

    if-eq v1, v2, :cond_0

    .line 1625
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1626
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1629
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1658
    if-eqz p1, :cond_0

    .line 1659
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;->ensureAtleastOneLayoutIsEnabled()V

    .line 1662
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->setEnabled(Z)V

    .line 1663
    return-void
.end method
