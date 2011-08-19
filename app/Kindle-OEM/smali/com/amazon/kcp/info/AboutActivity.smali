.class public Lcom/amazon/kcp/info/AboutActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    const v1, 0x7f0b0005

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/info/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lcom/amazon/kcp/info/AboutActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    const v1, 0x7f0b00b2

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/info/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/info/AboutActivity;->setContentView(I)V

    .line 45
    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/info/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ListView;

    move-object v7, v0

    .line 46
    new-instance v1, Lcom/amazon/kcp/info/AboutActivity$1;

    const v4, 0x1090003

    const v5, 0x1020014

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/info/AboutActivity$1;-><init>(Lcom/amazon/kcp/info/AboutActivity;Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    const v1, 0x7f0c0001

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/info/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/gesture/GestureOverlayView;

    .line 62
    const v2, 0x7f060001

    invoke-static {p0, v2}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    new-instance v3, Lcom/amazon/kcp/info/AboutActivity$2;

    invoke-direct {v3, p0, v2}, Lcom/amazon/kcp/info/AboutActivity$2;-><init>(Lcom/amazon/kcp/info/AboutActivity;Landroid/gesture/GestureLibrary;)V

    invoke-virtual {v1, v3}, Landroid/gesture/GestureOverlayView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    .line 124
    :cond_1
    return-void
.end method
