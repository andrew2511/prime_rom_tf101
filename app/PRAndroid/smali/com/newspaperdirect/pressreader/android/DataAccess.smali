.class public Lcom/newspaperdirect/pressreader/android/DataAccess;
.super Landroid/app/ListActivity;
.source "DataAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/DataAccess$DataAccessListAdapter;
    }
.end annotation


# static fields
.field private static final PREF_DATA_ACCESS:Ljava/lang/String; = "data_access_wifi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckboxClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 35
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 26
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 27
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->init()V

    .line 29
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/DataAccess;->setContentView(I)V

    .line 30
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/DataAccess;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/DataAccess;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v0, Lcom/newspaperdirect/pressreader/android/DataAccess$DataAccessListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/newspaperdirect/pressreader/android/DataAccess$DataAccessListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/DataAccess;Lcom/newspaperdirect/pressreader/android/DataAccess$DataAccessListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/DataAccess;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    return-void
.end method
