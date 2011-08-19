.class Lcom/newspaperdirect/pressreader/android/LocalStore$3;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I
    .locals 3

    .prologue
    .line 198
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I

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
    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I

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

.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$20(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V

    .line 202
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$21(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$13(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 206
    :pswitch_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    invoke-static {v1, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$20(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V

    .line 207
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$22(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$22(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getNewspapers()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$23(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$21(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$6(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$3;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$24(Lcom/newspaperdirect/pressreader/android/LocalStore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->getNewspapersByLanguage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$23(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
