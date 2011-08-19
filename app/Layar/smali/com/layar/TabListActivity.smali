.class public abstract Lcom/layar/TabListActivity;
.super Lcom/layar/OurListActivity;
.source "TabListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/TabListActivity$TabListAdapter;,
        Lcom/layar/TabListActivity$TabListItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/layar/TabListActivity$TabListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/layar/TabListActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/TabListActivity;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/layar/OurListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/TabListActivity;)Lcom/layar/TabListActivity$TabListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/layar/TabListActivity;->mAdapter:Lcom/layar/TabListActivity$TabListAdapter;

    return-object v0
.end method


# virtual methods
.method protected add(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 7
    .parameter "tag"
    .parameter "icon"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p4, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v6, p0, Lcom/layar/TabListActivity;->mAdapter:Lcom/layar/TabListActivity$TabListAdapter;

    new-instance v0, Lcom/layar/TabListActivity$TabListItem;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/layar/TabListActivity$TabListItem;-><init>(Lcom/layar/TabListActivity;Ljava/lang/String;IILjava/lang/Class;)V

    invoke-virtual {v6, v0}, Lcom/layar/TabListActivity$TabListAdapter;->add(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/layar/TabListActivity;->setContentView(I)V

    .line 32
    new-instance v0, Lcom/layar/TabListActivity$TabListAdapter;

    invoke-direct {v0, p0}, Lcom/layar/TabListActivity$TabListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/TabListActivity;->mAdapter:Lcom/layar/TabListActivity$TabListAdapter;

    .line 33
    invoke-virtual {p0}, Lcom/layar/TabListActivity;->onPrepareTabList()V

    .line 35
    iget-object v0, p0, Lcom/layar/TabListActivity;->mAdapter:Lcom/layar/TabListActivity$TabListAdapter;

    invoke-virtual {v0}, Lcom/layar/TabListActivity$TabListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/layar/TabListActivity;->finish()V

    .line 51
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/layar/TabListActivity;->mAdapter:Lcom/layar/TabListActivity$TabListAdapter;

    invoke-virtual {p0, v0}, Lcom/layar/TabListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    invoke-virtual {p0}, Lcom/layar/TabListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/layar/TabListActivity$1;

    invoke-direct {v1, p0}, Lcom/layar/TabListActivity$1;-><init>(Lcom/layar/TabListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method protected abstract onPrepareTabList()V
.end method

.method protected openByTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 61
    iget-object v3, p0, Lcom/layar/TabListActivity;->mAdapter:Lcom/layar/TabListActivity$TabListAdapter;

    invoke-virtual {v3}, Lcom/layar/TabListActivity$TabListAdapter;->getCount()I

    move-result v0

    .line 62
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 69
    :goto_1
    return-void

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/layar/TabListActivity;->mAdapter:Lcom/layar/TabListActivity$TabListAdapter;

    invoke-virtual {v3, v1}, Lcom/layar/TabListActivity$TabListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/TabListActivity$TabListItem;

    .line 64
    .local v2, item:Lcom/layar/TabListActivity$TabListItem;
    iget-object v3, v2, Lcom/layar/TabListActivity$TabListItem;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {p0, v2}, Lcom/layar/TabListActivity;->openTab(Lcom/layar/TabListActivity$TabListItem;)V

    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected openTab(Lcom/layar/TabListActivity$TabListItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/layar/TabListActivity$TabListItem;->intentClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/layar/TabListActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v1, v0}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method protected update(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 1
    .parameter "tag"
    .parameter "icon"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p4, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/layar/TabListActivity;->mAdapter:Lcom/layar/TabListActivity$TabListAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/layar/TabListActivity$TabListAdapter;->update(Ljava/lang/String;IILjava/lang/Class;)V

    .line 77
    return-void
.end method
