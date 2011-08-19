.class Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewspapersListAdapter"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I

.field private static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eSort:[I


# instance fields
.field public mAdditionalTitle:Ljava/lang/String;

.field private mNewspapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation
.end field

.field private mNewspapersAdditional:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivilegedSortCids:[Ljava/lang/String;

.field private mPrivilegedSortString:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public singleMode:Z

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I
    .locals 3

    .prologue
    .line 1183
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->values()[Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->FavoriteList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->LanguageList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->RecentList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eSort()[I
    .locals 3

    .prologue
    .line 1183
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eSort:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->values()[Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Date:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Rate:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Title:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eSort:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1204
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 1196
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1188
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortCids:[Ljava/lang/String;

    .line 1189
    const-string v0, ""

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortString:Ljava/lang/String;

    .line 1194
    iput-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->singleMode:Z

    .line 1197
    const v0, 0x7f0c0015

    invoke-virtual {p1, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1199
    iput-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->singleMode:Z

    .line 1200
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    .line 1201
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->setPrivilegedSorting()V

    .line 1202
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->sort()V

    return-void
.end method

.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    .local p3, additional:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1213
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 1205
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1188
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortCids:[Ljava/lang/String;

    .line 1189
    const-string v0, ""

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortString:Ljava/lang/String;

    .line 1194
    iput-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->singleMode:Z

    .line 1206
    const v0, 0x7f0c0015

    invoke-virtual {p1, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1208
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    .line 1209
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapersAdditional:Ljava/util/List;

    .line 1210
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapersAdditional:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->singleMode:Z

    .line 1211
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->setPrivilegedSorting()V

    .line 1212
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->sort()V

    return-void

    :cond_0
    move v0, v2

    .line 1210
    goto :goto_0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortCids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortString:Ljava/lang/String;

    return-object v0
.end method

.method private setPrivilegedSorting()V
    .locals 4

    .prologue
    .line 1318
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, privCids:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1320
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortCids:[Ljava/lang/String;

    .line 1321
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortCids:[Ljava/lang/String;

    array-length v2, v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v0, v2, :cond_1

    .line 1326
    .end local v0           #i:I
    .end local v1           #privCids:Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v3, 0x7f09004f

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortString:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1328
    :goto_2
    return-void

    .line 1322
    .restart local v0       #i:I
    .restart local v1       #privCids:Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortCids:[Ljava/lang/String;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mPrivilegedSortCids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1327
    .end local v0           #i:I
    .end local v1           #privCids:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1324
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1243
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->singleMode:Z

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1218
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapersAdditional:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->singleMode:Z

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1228
    :goto_0
    return-object v0

    .line 1224
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1226
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_3

    .line 1227
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1228
    :cond_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapersAdditional:Ljava/util/List;

    const/4 v1, 0x2

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1232
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getNewspapers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1253
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 1254
    .local v1, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    const-string v2, ""

    .line 1255
    .local v2, other:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1257
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1258
    .local v3, result:Landroid/view/View;
    const-string v7, "header"

    invoke-virtual {v3, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1259
    const v7, 0x7f0c002f

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1260
    .local v6, text:Landroid/widget/TextView;
    if-nez p1, :cond_0

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v3

    .line 1301
    .end local v3           #result:Landroid/view/View;
    .end local v6           #text:Landroid/widget/TextView;
    .end local p0
    .end local p1
    .local v4, result:Landroid/view/View;
    :goto_1
    return-object v4

    .line 1260
    .end local v4           #result:Landroid/view/View;
    .restart local v3       #result:Landroid/view/View;
    .restart local v6       #text:Landroid/widget/TextView;
    .restart local p0
    .restart local p1
    :cond_0
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mAdditionalTitle:Ljava/lang/String;

    goto :goto_0

    .line 1263
    .end local v3           #result:Landroid/view/View;
    .end local v6           #text:Landroid/widget/TextView;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1264
    :cond_2
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030010

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1265
    .restart local v3       #result:Landroid/view/View;
    const-string v7, "item"

    invoke-virtual {v3, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1270
    :goto_2
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->hasSupplements()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1271
    const v7, 0x7f0c0038

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1272
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v8, 0x7f0900cf

    invoke-virtual {v7, v8}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSupplements()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1277
    :goto_3
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v7, v1, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$10(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Landroid/view/View;)V

    .line 1278
    const v7, 0x7f0c0032

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1279
    .local v5, spinner:Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1280
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$11(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1282
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v8, 0x7f0c0031

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v7, p1, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$12(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V

    .line 1283
    const v7, 0x7f0c0034

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v7, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    if-eqz v7, :cond_5

    .line 1285
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "E, d MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1286
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    const v7, 0x7f0c0035

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    .end local v0           #formatter:Ljava/text/SimpleDateFormat;
    :goto_4
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getEnableSmart()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1290
    const v7, 0x7f0c0036

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    :goto_5
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$13(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1298
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCountryName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1300
    :goto_6
    const v7, 0x7f0c0037

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v3

    .line 1301
    .end local v3           #result:Landroid/view/View;
    .restart local v4       #result:Landroid/view/View;
    goto/16 :goto_1

    .line 1268
    .end local v4           #result:Landroid/view/View;
    .end local v5           #spinner:Landroid/widget/ImageView;
    .restart local p0
    .restart local p1
    :cond_3
    move-object v3, p2

    .restart local v3       #result:Landroid/view/View;
    goto/16 :goto_2

    .line 1275
    :cond_4
    const v7, 0x7f0c0038

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1288
    .end local p1
    .restart local v5       #spinner:Landroid/widget/ImageView;
    :cond_5
    const v7, 0x7f0c0035

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1293
    :cond_6
    const v7, 0x7f0c0036

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1296
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1297
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCountryName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1248
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdditionalTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "additionalTitle"

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mAdditionalTitle:Ljava/lang/String;

    .line 1310
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mTitle:Ljava/lang/String;

    .line 1306
    return-void
.end method

.method protected sort()V
    .locals 3

    .prologue
    .line 1331
    const/4 v0, 0x0

    .line 1332
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eSort()[I

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$14(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1389
    :goto_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapers:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1390
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->singleMode:Z

    if-nez v1, :cond_0

    .line 1391
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->mNewspapersAdditional:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1392
    :cond_0
    return-void

    .line 1334
    :pswitch_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;

    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)V

    .line 1369
    .restart local v0       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    goto :goto_0

    .line 1371
    :pswitch_1
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$2;

    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$2;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)V

    .line 1376
    .restart local v0       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    goto :goto_0

    .line 1378
    :pswitch_2
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$3;

    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$3;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)V

    .restart local v0       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    goto :goto_0

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sort(Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;)V
    .locals 1
    .parameter "sort"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$9(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;)V

    .line 1237
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->sort()V

    .line 1238
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->notifyDataSetChanged()V

    .line 1239
    return-void
.end method
