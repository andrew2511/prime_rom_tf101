.class public Lcom/splashtop/remote/ServerListView;
.super Landroid/widget/ListView;
.source "ServerListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;,
        Lcom/splashtop/remote/ServerListView$ListViewListener;
    }
.end annotation


# instance fields
.field private dbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/MacBean;",
            ">;"
        }
    .end annotation
.end field

.field private listItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/MacBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/splashtop/remote/ServerListAdapter;

.field private mListener:Lcom/splashtop/remote/ServerListView$ListViewListener;

.field private netCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/MacBean;",
            ">;"
        }
    .end annotation
.end field

.field private netList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/MacBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/splashtop/remote/ServerListView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/splashtop/remote/ServerListView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lcom/splashtop/remote/ServerListView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/ServerListView;)Lcom/splashtop/remote/ServerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->mListAdapter:Lcom/splashtop/remote/ServerListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/ServerListView;)Lcom/splashtop/remote/ServerListView$ListViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->mListener:Lcom/splashtop/remote/ServerListView$ListViewListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/ServerListView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/splashtop/remote/ServerListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/splashtop/remote/ServerListView;->taskLoop()V

    return-void
.end method

.method private addFooterView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/splashtop/remote/ServerListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 98
    .local v1, layout:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/splashtop/remote/ServerListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 99
    return-void
.end method

.method private getServerListFromDB()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/MacBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 161
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/splashtop/remote/bean/MacBean;>;"
    new-instance v1, Lcom/splashtop/remote/utils/DBAdapter;

    invoke-virtual {p0}, Lcom/splashtop/remote/ServerListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/splashtop/remote/utils/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, db:Lcom/splashtop/remote/utils/DBAdapter;
    invoke-virtual {v1}, Lcom/splashtop/remote/utils/DBAdapter;->open()V

    .line 163
    invoke-virtual {v1}, Lcom/splashtop/remote/utils/DBAdapter;->fetchAllData()Landroid/database/Cursor;

    move-result-object v0

    .line 164
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    :cond_0
    new-instance v3, Lcom/splashtop/remote/bean/MacBean;

    invoke-direct {v3, v0}, Lcom/splashtop/remote/bean/MacBean;-><init>(Landroid/database/Cursor;)V

    .line 167
    .local v3, macBean:Lcom/splashtop/remote/bean/MacBean;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    .end local v3           #macBean:Lcom/splashtop/remote/bean/MacBean;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 171
    invoke-virtual {v1}, Lcom/splashtop/remote/utils/DBAdapter;->close()V

    .line 172
    return-object v2
.end method

.method private init()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/ServerListView;->listItem:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/ServerListView;->netCacheList:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/splashtop/remote/ServerListAdapter;

    invoke-virtual {p0}, Lcom/splashtop/remote/ServerListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/splashtop/remote/ServerListView;->listItem:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/splashtop/remote/ServerListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/splashtop/remote/ServerListView;->mListAdapter:Lcom/splashtop/remote/ServerListAdapter;

    .line 63
    invoke-direct {p0}, Lcom/splashtop/remote/ServerListView;->addFooterView()V

    .line 64
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->mListAdapter:Lcom/splashtop/remote/ServerListAdapter;

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/ServerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-direct {p0}, Lcom/splashtop/remote/ServerListView;->setListener()V

    .line 68
    invoke-direct {p0}, Lcom/splashtop/remote/ServerListView;->getServerListFromDB()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    .line 69
    invoke-direct {p0}, Lcom/splashtop/remote/ServerListView;->taskLoop()V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/ServerListView;->refreshView(Z)V

    .line 71
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/splashtop/remote/ServerListView$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/ServerListView$1;-><init>(Lcom/splashtop/remote/ServerListView;)V

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/ServerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    new-instance v0, Lcom/splashtop/remote/ServerListView$2;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/ServerListView$2;-><init>(Lcom/splashtop/remote/ServerListView;)V

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/ServerListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 93
    return-void
.end method

.method private taskLoop()V
    .locals 4

    .prologue
    .line 222
    new-instance v0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;-><init>(Lcom/splashtop/remote/ServerListView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    return-void
.end method


# virtual methods
.method public addToDB(Lcom/splashtop/remote/bean/MacBean;)V
    .locals 4
    .parameter "macBean"

    .prologue
    .line 176
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/splashtop/remote/bean/MacBean;

    .line 178
    .local v1, mb:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 183
    .end local v1           #mb:Lcom/splashtop/remote/bean/MacBean;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/splashtop/remote/ServerListView;->refreshView(Z)V

    .line 184
    return-void
.end method

.method public darkenItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/splashtop/remote/bean/MacBean;

    .line 209
    .local v1, mb:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual {v1, v3}, Lcom/splashtop/remote/bean/MacBean;->setMacOnline(Z)V

    goto :goto_0

    .line 211
    .end local v1           #mb:Lcom/splashtop/remote/bean/MacBean;
    :cond_0
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/splashtop/remote/bean/MacBean;

    .line 212
    .restart local v1       #mb:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual {v1, v3}, Lcom/splashtop/remote/bean/MacBean;->setMacOnline(Z)V

    goto :goto_1

    .line 214
    .end local v1           #mb:Lcom/splashtop/remote/bean/MacBean;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/splashtop/remote/ServerListView;->refreshView(Z)V

    .line 215
    return-void
.end method

.method public deleteFromDB(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/splashtop/remote/bean/MacBean;

    .line 199
    .local v1, mb:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual {v1}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    .end local v1           #mb:Lcom/splashtop/remote/bean/MacBean;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/splashtop/remote/ServerListView;->refreshView(Z)V

    .line 205
    return-void
.end method

.method public doHandshake()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;-><init>(Lcom/splashtop/remote/ServerListView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    :cond_0
    return-void
.end method

.method public finishProbe()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/splashtop/remote/ServerListView;->netCacheList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/ServerListView;->refreshView(Z)V

    .line 157
    :cond_0
    return-void
.end method

.method public preparedToAdd(Lcom/splashtop/remote/bean/MacBean;)V
    .locals 7
    .parameter "mac"

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, i:I
    const/4 v3, 0x0

    .line 123
    .local v3, j:I
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->mListAdapter:Lcom/splashtop/remote/ServerListAdapter;

    invoke-virtual {v5}, Lcom/splashtop/remote/ServerListAdapter;->getCount()I

    move-result v0

    .line 124
    .local v0, count:I
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 126
    .local v4, size:I
    const-wide/16 v5, -0x1

    invoke-virtual {p1, v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setId(J)V

    .line 127
    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/splashtop/remote/bean/MacBean;->setMacAddr(Ljava/lang/String;)V

    .line 129
    :goto_0
    if-ge v2, v0, :cond_0

    .line 130
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->mListAdapter:Lcom/splashtop/remote/ServerListAdapter;

    invoke-virtual {v5, v2}, Lcom/splashtop/remote/ServerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, db_addr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 135
    .end local v1           #db_addr:Ljava/lang/String;
    :cond_0
    :goto_1
    if-ge v3, v4, :cond_1

    .line 136
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1       #db_addr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 142
    .end local v1           #db_addr:Ljava/lang/String;
    :cond_1
    if-ne v3, v4, :cond_2

    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_2
    if-ne v2, v0, :cond_3

    .line 144
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->netCacheList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->netCacheList:Ljava/util/List;

    new-instance v6, Lcom/splashtop/remote/utils/ServerComparator;

    invoke-direct {v6}, Lcom/splashtop/remote/utils/ServerComparator;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->listItem:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 147
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->listItem:Ljava/util/List;

    iget-object v6, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->listItem:Ljava/util/List;

    iget-object v6, p0, Lcom/splashtop/remote/ServerListView;->netCacheList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v5, p0, Lcom/splashtop/remote/ServerListView;->mListAdapter:Lcom/splashtop/remote/ServerListAdapter;

    invoke-virtual {v5}, Lcom/splashtop/remote/ServerListAdapter;->notifyDataSetChanged()V

    .line 151
    :cond_3
    return-void

    .line 129
    .restart local v1       #db_addr:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public refreshView(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->listItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    new-instance v1, Lcom/splashtop/remote/utils/ServerComparator;

    invoke-direct {v1}, Lcom/splashtop/remote/utils/ServerComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    new-instance v1, Lcom/splashtop/remote/utils/ServerComparator;

    invoke-direct {v1}, Lcom/splashtop/remote/utils/ServerComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->listItem:Ljava/util/List;

    iget-object v1, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->listItem:Ljava/util/List;

    iget-object v1, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/ServerListView;->mListAdapter:Lcom/splashtop/remote/ServerListAdapter;

    invoke-virtual {v0}, Lcom/splashtop/remote/ServerListAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public setListViewListener(Lcom/splashtop/remote/ServerListView$ListViewListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/splashtop/remote/ServerListView;->mListener:Lcom/splashtop/remote/ServerListView$ListViewListener;

    .line 56
    return-void
.end method

.method public startToProbe()V
    .locals 3

    .prologue
    .line 113
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->netCacheList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 114
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/splashtop/remote/bean/MacBean;

    .line 115
    .local v1, macBean:Lcom/splashtop/remote/bean/MacBean;
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->netCacheList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v1           #macBean:Lcom/splashtop/remote/bean/MacBean;
    :cond_0
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->netList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 118
    return-void
.end method

.method public updateToDB(Lcom/splashtop/remote/bean/MacBean;)V
    .locals 6
    .parameter "macBean"

    .prologue
    .line 187
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/splashtop/remote/bean/MacBean;

    .line 188
    .local v1, mb:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object v2, p0, Lcom/splashtop/remote/ServerListView;->dbList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v1           #mb:Lcom/splashtop/remote/bean/MacBean;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/splashtop/remote/ServerListView;->refreshView(Z)V

    .line 195
    return-void
.end method
