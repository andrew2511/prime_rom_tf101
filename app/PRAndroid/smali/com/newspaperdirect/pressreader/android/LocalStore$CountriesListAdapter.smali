.class Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountriesListAdapter"
.end annotation


# instance fields
.field private final RETRY_COUNT:I

.field private mCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1087
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 1056
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1054
    const/4 v0, 0x3

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->RETRY_COUNT:I

    .line 1057
    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->mCountries:Ljava/util/List;

    .line 1058
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 1086
    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->mCountries:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;
    .locals 1
    .parameter

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->mCountries:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1091
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->mCountries:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1096
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1104
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->mCountries:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1116
    .end local p0
    :goto_0
    return-object v2

    .line 1106
    .restart local p0
    :cond_0
    if-nez p2, :cond_1

    .line 1107
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1112
    .local v1, result:Landroid/view/View;
    :goto_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    .line 1113
    .local v0, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v3, 0x7f0c000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-static {v2, p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$7(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V

    .line 1114
    const v2, 0x7f0c000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getNewspapersCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    .line 1116
    goto :goto_0

    .line 1110
    .end local v0           #country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    .end local v1           #result:Landroid/view/View;
    .restart local p0
    :cond_1
    move-object v1, p2

    .restart local v1       #result:Landroid/view/View;
    goto :goto_1
.end method
