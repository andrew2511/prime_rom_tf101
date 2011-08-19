.class public Lcom/layar/NewLayersActivity;
.super Lcom/layar/LayerListActivity;
.source "NewLayersActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/layar/NewLayersActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/NewLayersActivity;->TAG:Ljava/lang/String;

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
    .line 30
    const-string v0, "new"

    return-object v0
.end method

.method protected getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/layar/NewLayersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/layar/NewLayersActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initSubsection()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method protected needUpdateOnResume()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const-string v0, "all"

    iput-object v0, p0, Lcom/layar/NewLayersActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 15
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/layar/NewLayersActivity;->showNoLayersMessage(I)V

    .line 16
    return-void
.end method
