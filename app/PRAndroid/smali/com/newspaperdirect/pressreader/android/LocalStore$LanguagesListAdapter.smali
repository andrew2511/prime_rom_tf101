.class Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguagesListAdapter"
.end annotation


# instance fields
.field private final RETRY_COUNT:I

.field private mLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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

    .line 1152
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 1124
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1122
    const/4 v0, 0x3

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->RETRY_COUNT:I

    .line 1125
    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->mLanguages:Ljava/util/List;

    .line 1126
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 1151
    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->mLanguages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;
    .locals 1
    .parameter

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->mLanguages:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->mLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->mLanguages:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->mLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1165
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1169
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->mLanguages:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1179
    :goto_0
    return-object v2

    .line 1171
    :cond_0
    if-nez p2, :cond_1

    .line 1172
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1175
    .local v1, result:Landroid/view/View;
    :goto_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->mLanguages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1176
    .local v0, language:Ljava/lang/String;
    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    const v2, 0x7f0c000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$6(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->getNewspapersCountByLanguage(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    .line 1179
    goto :goto_0

    .line 1174
    .end local v0           #language:Ljava/lang/String;
    .end local v1           #result:Landroid/view/View;
    :cond_1
    move-object v1, p2

    .restart local v1       #result:Landroid/view/View;
    goto :goto_1
.end method
