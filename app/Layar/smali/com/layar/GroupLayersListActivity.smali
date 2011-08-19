.class public Lcom/layar/GroupLayersListActivity;
.super Lcom/layar/LayerListActivity;
.source "GroupLayersListActivity.java"


# static fields
.field public static final GROUP_ID:Ljava/lang/String; = "group:id"

.field public static final GROUP_NAME:Ljava/lang/String; = "group:name"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mGroupId:I

.field private mGroupName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/layar/GroupLayersListActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/GroupLayersListActivity;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/layar/LayerListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doUpdateIfNeeded()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/layar/GroupLayersListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->clear()V

    .line 43
    iget-object v0, p0, Lcom/layar/GroupLayersListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->addPendingItem()V

    .line 44
    return-void
.end method

.method protected getListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "group"

    return-object v0
.end method

.method protected getLoadQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/layar/GroupLayersListActivity;->mGroupId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/layar/GroupLayersListActivity;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/layar/GroupLayersListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initSubsection()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lcom/layar/GroupLayersListActivity;->showNoLayersMessage(I)V

    .line 25
    invoke-virtual {p0}, Lcom/layar/GroupLayersListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "group:id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/layar/GroupLayersListActivity;->mGroupId:I

    .line 27
    const-string v1, "group:name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/GroupLayersListActivity;->mGroupName:Ljava/lang/String;

    .line 29
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
