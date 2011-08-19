.class public Lcom/nuance/xt9/input/InputMethods$ChineseHandwritingInputMode;
.super Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseHandwritingInputMode"
.end annotation


# instance fields
.field public mFullScreenHandwritingState:Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 1
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    .line 1769
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1771
    new-instance v0, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;-><init>(Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/InputMethods$ChineseHandwritingInputMode;->mFullScreenHandwritingState:Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;

    .line 1772
    return-void
.end method


# virtual methods
.method public getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;
    .locals 2

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$ChineseHandwritingInputMode;->mLayouts:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$ChineseHandwritingInputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$ChineseHandwritingInputMode;->mLayouts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/InputMethods$Layout;

    move-object v0, p0

    .line 1780
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
