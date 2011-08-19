.class public Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;
.super Lcom/nuance/xt9/input/InputMethods$InputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 0
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    .line 1568
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1569
    return-void
.end method


# virtual methods
.method public switchToCurrent()V
    .locals 3

    .prologue
    .line 1598
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->saveAsCurrent()V

    .line 1599
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1600
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1601
    return-void
.end method

.method public syncCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1572
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1574
    .local v1, sp:Landroid/content/SharedPreferences;
    move-object v0, p0

    .line 1578
    .local v0, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->isHandwriting()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->enabledKeyboardLayoutCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1579
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1580
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 1581
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->getLanguageId()I

    move-result v2

    iget-object v3, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1593
    :cond_0
    :goto_0
    return-object v0

    .line 1584
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    check-cast v0, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 1585
    .restart local v0       #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->getLanguageId()I

    move-result v2

    iget-object v3, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    goto :goto_0

    .line 1588
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->isHandwriting()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1589
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    check-cast v0, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 1590
    .restart local v0       #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->getLanguageId()I

    move-result v2

    iget-object v3, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    goto :goto_0
.end method
