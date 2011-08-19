.class public Lcom/layar/TestLayersActivity;
.super Lcom/layar/LayerListActivity;
.source "TestLayersActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/layar/TestLayersActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/TestLayersActivity;->TAG:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/layar/LayerListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "my"

    return-object v0
.end method

.method protected getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/layar/TestLayersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/layar/TestLayersActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initSubsection()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const-string v0, "dev"

    iput-object v0, p0, Lcom/layar/TestLayersActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 15
    return-void
.end method
