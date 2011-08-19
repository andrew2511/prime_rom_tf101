.class public Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullScreenHandwritingState"
.end annotation


# instance fields
.field private mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

.field private mRememberFullScreenModeKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 1791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1792
    iput-object p1, p0, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/xt9/input/InputMethods;->access$400(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v1, v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;->mRememberFullScreenModeKey:Ljava/lang/String;

    .line 1794
    return-void
.end method


# virtual methods
.method public isUseInFullScreenMode()Z
    .locals 4

    .prologue
    .line 1803
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1804
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;->mRememberFullScreenModeKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1805
    .local v0, fullScreen:Z
    return v0
.end method

.method public setUseInFullScreenMode(Z)V
    .locals 2
    .parameter "set"

    .prologue
    .line 1797
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1798
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;->mRememberFullScreenModeKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1799
    return-void
.end method
