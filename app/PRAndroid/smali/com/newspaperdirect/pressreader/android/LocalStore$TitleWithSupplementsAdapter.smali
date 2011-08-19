.class Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;
.super Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleWithSupplementsAdapter"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I


# instance fields
.field private mMainTitle:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I
    .locals 3

    .prologue
    .line 1395
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I

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
    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I

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

.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V
    .locals 1
    .parameter
    .parameter "mainTitle"

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 1400
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSupplements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    .line 1401
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->mMainTitle:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->getNewspapers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 1410
    if-nez p1, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->mMainTitle:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 1413
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->getNewspapers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1417
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x7f0c0036

    const v7, 0x7f0c0035

    const/4 v6, 0x0

    .line 1432
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 1433
    .local v1, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1434
    :cond_0
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030010

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1435
    .local v3, result:Landroid/view/View;
    const-string v4, "item"

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1440
    :goto_0
    if-nez p1, :cond_2

    .line 1441
    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1446
    :goto_1
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v4, v1, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$10(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Landroid/view/View;)V

    .line 1448
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v4, 0x7f0c0031

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v5, v4, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$12(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V

    .line 1449
    const v4, 0x7f0c0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    iget-object v4, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    if-eqz v4, :cond_3

    .line 1451
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "E, d MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1452
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    .end local v0           #formatter:Ljava/text/SimpleDateFormat;
    :goto_2
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getEnableSmart()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1456
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1459
    :goto_3
    const-string v2, ""

    .line 1460
    .local v2, other:Ljava/lang/String;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I

    move-result-object v4

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$13(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1463
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 1465
    :goto_4
    const v4, 0x7f0c0037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    return-object v3

    .line 1438
    .end local v2           #other:Ljava/lang/String;
    .end local v3           #result:Landroid/view/View;
    .restart local p0
    :cond_1
    move-object v3, p2

    .restart local v3       #result:Landroid/view/View;
    goto :goto_0

    .line 1443
    :cond_2
    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1454
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1458
    :cond_4
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1461
    .restart local v2       #other:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getLanguage()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1462
    :pswitch_1
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCountryName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1460
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
    .line 1427
    const/4 v0, 0x1

    return v0
.end method
