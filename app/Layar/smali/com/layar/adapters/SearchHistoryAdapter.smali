.class public Lcom/layar/adapters/SearchHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchHistoryAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;
    }
.end annotation


# static fields
.field private static final SEARCH_HISTORY_FILE:Ljava/lang/String; = "searchhistory.txt"

.field private static final SEARCH_HISTORY_SIZE:I = 0x19

.field private static final TAG:Ljava/lang/String; = "layar.SearchHistory"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropDownResource:I

.field private mFieldId:I

.field private mFilter:Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;

.field private mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mNotifyOnChange:Z

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mLock:Ljava/lang/Object;

    .line 49
    iput v2, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mFieldId:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mNotifyOnChange:Z

    .line 74
    const v0, 0x109000a

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/layar/adapters/SearchHistoryAdapter;->init(Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 77
    invoke-direct {p0}, Lcom/layar/adapters/SearchHistoryAdapter;->loadFromFile()V

    .line 78
    return-void
.end method

.method static synthetic access$1(Lcom/layar/adapters/SearchHistoryAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/adapters/SearchHistoryAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/adapters/SearchHistoryAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/adapters/SearchHistoryAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lcom/layar/adapters/SearchHistoryAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :goto_0
    iget-boolean v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/layar/adapters/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 142
    :cond_0
    return-void

    .line 134
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    iget-boolean v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/layar/adapters/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 187
    :cond_0
    return-void

    .line 179
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 280
    if-nez p2, :cond_0

    .line 281
    iget-object v5, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 287
    .local v4, view:Landroid/view/View;
    :goto_0
    :try_start_0
    iget v5, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mFieldId:I

    if-nez v5, :cond_1

    .line 290
    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .local v3, text:Landroid/widget/TextView;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/layar/adapters/SearchHistoryAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, item:Ljava/lang/String;
    instance-of v5, v2, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 303
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :goto_2
    return-object v4

    .line 283
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 293
    :cond_1
    :try_start_1
    iget v5, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mFieldId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3       #text:Landroid/widget/TextView;
    goto :goto_1

    .line 295
    .end local v3           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 297
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 298
    const-string v6, "ArrayAdapter requires the resource ID to be a TextView"

    .line 297
    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 305
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #item:Ljava/lang/String;
    .restart local v3       #text:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private init(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    .line 219
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 218
    iput-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 220
    iput p2, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mDropDownResource:I

    iput p2, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mResource:I

    .line 221
    iput-object p4, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    .line 222
    iput p3, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mFieldId:I

    .line 223
    return-void
.end method

.method private loadFromFile()V
    .locals 5

    .prologue
    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/layar/adapters/SearchHistoryAdapter;->clear()V

    .line 86
    invoke-virtual {p0}, Lcom/layar/adapters/SearchHistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "searchhistory.txt"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 87
    .local v0, is:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    .local v2, reader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, line:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 102
    .end local v0           #is:Ljava/io/FileInputStream;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    :goto_1
    return-void

    .line 91
    .restart local v0       #is:Ljava/io/FileInputStream;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_0
    invoke-direct {p0, v1}, Lcom/layar/adapters/SearchHistoryAdapter;->add(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 99
    .end local v0           #is:Ljava/io/FileInputStream;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 97
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public addQuery(Ljava/lang/String;)V
    .locals 5
    .parameter "query"

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v4, :cond_3

    .line 158
    iget-boolean v1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mNotifyOnChange:Z

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/layar/adapters/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 150
    :cond_1
    monitor-exit v0

    .line 172
    :cond_2
    :goto_1
    return-void

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    :goto_2
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v4, :cond_6

    .line 169
    iget-boolean v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/layar/adapters/SearchHistoryAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 329
    .line 330
    iget v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mDropDownResource:I

    .line 329
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layar/adapters/SearchHistoryAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mFilter:Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;-><init>(Lcom/layar/adapters/SearchHistoryAdapter;Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;)V

    iput-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mFilter:Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mFilter:Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/layar/adapters/SearchHistoryAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 265
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/String;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 272
    iget v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layar/adapters/SearchHistoryAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mNotifyOnChange:Z

    .line 196
    return-void
.end method

.method public saveToFile()V
    .locals 6

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/layar/adapters/SearchHistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "searchhistory.txt"

    .line 107
    const/4 v5, 0x0

    .line 106
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 108
    .local v1, os:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 110
    .local v2, writer:Ljava/io/BufferedWriter;
    iget-object v3, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 111
    iget-object v4, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 111
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 123
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    .end local v0           #i:I
    .end local v1           #os:Ljava/io/FileOutputStream;
    .end local v2           #writer:Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 113
    .restart local v0       #i:I
    .restart local v1       #os:Ljava/io/FileOutputStream;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 124
    .end local v0           #i:I
    .end local v1           #os:Ljava/io/FileOutputStream;
    .end local v2           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 117
    .restart local v1       #os:Ljava/io/FileOutputStream;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v3, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 126
    .end local v0           #i:I
    .end local v1           #os:Ljava/io/FileOutputStream;
    .end local v2           #writer:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 321
    iput p1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mDropDownResource:I

    .line 322
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .parameter "notifyOnChange"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/layar/adapters/SearchHistoryAdapter;->mNotifyOnChange:Z

    .line 213
    return-void
.end method
