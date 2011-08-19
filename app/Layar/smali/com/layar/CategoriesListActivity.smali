.class public Lcom/layar/CategoriesListActivity;
.super Lcom/layar/OurListActivity;
.source "CategoriesListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/CategoriesListActivity$RefreshTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layar/OurListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final MENU_REFRESH:I = 0x14

.field private static final STATE_LIST_POSITION:Ljava/lang/String; = "listPosition"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategoriesAdapter:Lcom/layar/adapters/CategoriesCursorAdapter;

.field private mRefreshTask:Lcom/layar/CategoriesListActivity$RefreshTask;

.field private mRefreshTaskSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/layar/CategoriesListActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/CategoriesListActivity;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/layar/OurListActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layar/CategoriesListActivity;->mRefreshTaskSync:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private _startCategoryListActivity(ILjava/lang/String;)V
    .locals 2
    .parameter "categoryId"
    .parameter "categoryName"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    .line 125
    const-class v1, Lcom/layar/CategoryLayersListActivity;

    .line 124
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "categoryId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v1, "categoryName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/layar/CategoriesListActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v1, v0}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method static synthetic access$0(Lcom/layar/CategoriesListActivity;)Lcom/layar/adapters/CategoriesCursorAdapter;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/layar/CategoriesListActivity;->mCategoriesAdapter:Lcom/layar/adapters/CategoriesCursorAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/CategoriesListActivity;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/layar/CategoriesListActivity;->mRefreshTaskSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/CategoriesListActivity;Lcom/layar/CategoriesListActivity$RefreshTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/layar/CategoriesListActivity;->mRefreshTask:Lcom/layar/CategoriesListActivity$RefreshTask;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/layar/CategoriesListActivity;->setContentView(I)V

    .line 39
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/layar/CategoriesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    .local v0, title:Landroid/widget/TextView;
    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    new-instance v1, Lcom/layar/adapters/CategoriesCursorAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/layar/adapters/CategoriesCursorAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/layar/CategoriesListActivity;->mCategoriesAdapter:Lcom/layar/adapters/CategoriesCursorAdapter;

    .line 43
    iget-object v1, p0, Lcom/layar/CategoriesListActivity;->mCategoriesAdapter:Lcom/layar/adapters/CategoriesCursorAdapter;

    invoke-virtual {p0, v1}, Lcom/layar/CategoriesListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    invoke-virtual {p0}, Lcom/layar/CategoriesListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 107
    const/16 v0, 0x14

    const v1, 0x7f090049

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 108
    const v1, 0x7f0200cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 109
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, mAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/layar/CategoriesListActivity;->mCategoriesAdapter:Lcom/layar/adapters/CategoriesCursorAdapter;

    invoke-virtual {v3, p3}, Lcom/layar/adapters/CategoriesCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 91
    .local v2, cursor:Landroid/database/Cursor;
    sget-object v3, Lcom/layar/provider/CategoriesAlias;->ID:Lcom/layar/provider/CategoriesAlias;

    iget-object v3, v3, Lcom/layar/provider/CategoriesAlias;->column:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, categoryId:I
    sget-object v3, Lcom/layar/provider/CategoriesAlias;->NAME:Lcom/layar/provider/CategoriesAlias;

    iget-object v3, v3, Lcom/layar/provider/CategoriesAlias;->column:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, categoryName:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/layar/CategoriesListActivity;->_startCategoryListActivity(ILjava/lang/String;)V

    .line 94
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/layar/CategoriesListActivity;->refresh()V

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/layar/CategoriesListActivity;->mCategoriesAdapter:Lcom/layar/adapters/CategoriesCursorAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/CategoriesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 60
    invoke-virtual {p0}, Lcom/layar/CategoriesListActivity;->onSaveState()V

    .line 61
    invoke-super {p0}, Lcom/layar/OurListActivity;->onPause()V

    .line 62
    return-void
.end method

.method protected onRestoreState()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/layar/CategoriesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v2, "listPosition"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const-string v2, "listPosition"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, position:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/layar/CategoriesListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 78
    :cond_0
    const-string v2, "listPosition"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 80
    .end local v1           #position:I
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/layar/OurListActivity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/layar/CategoriesListActivity;->mCategoriesAdapter:Lcom/layar/adapters/CategoriesCursorAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/CategoriesCursorAdapter;->refresh()V

    .line 52
    invoke-virtual {p0}, Lcom/layar/CategoriesListActivity;->onRestoreState()V

    .line 53
    invoke-virtual {p0}, Lcom/layar/CategoriesListActivity;->refresh()V

    .line 54
    return-void
.end method

.method protected onSaveState()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/layar/CategoriesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "listPosition"

    invoke-virtual {p0}, Lcom/layar/CategoriesListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/layar/CategoriesListActivity;->mCategoriesAdapter:Lcom/layar/adapters/CategoriesCursorAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/CategoriesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 68
    invoke-super {p0}, Lcom/layar/OurListActivity;->onStop()V

    .line 69
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/layar/CategoriesListActivity;->mRefreshTaskSync:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/layar/CategoriesListActivity;->mRefreshTask:Lcom/layar/CategoriesListActivity$RefreshTask;

    if-eqz v1, :cond_0

    .line 99
    monitor-exit v0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v1, Lcom/layar/CategoriesListActivity$RefreshTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/layar/CategoriesListActivity$RefreshTask;-><init>(Lcom/layar/CategoriesListActivity;Lcom/layar/CategoriesListActivity$RefreshTask;)V

    iput-object v1, p0, Lcom/layar/CategoriesListActivity;->mRefreshTask:Lcom/layar/CategoriesListActivity$RefreshTask;

    .line 101
    iget-object v1, p0, Lcom/layar/CategoriesListActivity;->mRefreshTask:Lcom/layar/CategoriesListActivity$RefreshTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/layar/CategoriesListActivity$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
