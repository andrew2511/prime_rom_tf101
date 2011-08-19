.class public Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;
.super Lcom/nuance/xt9/input/InputMethods$InputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 0
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    .line 1727
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1730
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 4

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1740
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;->mDefaultEnabled:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;->isAtLeastOneLayoutIsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 1744
    .local v0, enabled:Z
    :goto_0
    return v0

    .line 1740
    .end local v0           #enabled:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public saveAsCurrent()V
    .locals 0

    .prologue
    .line 1734
    invoke-super {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 1735
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1752
    if-eqz p1, :cond_0

    .line 1753
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;->ensureAtleastOneLayoutIsEnabled()V

    .line 1756
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1757
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1758
    return-void
.end method
