.class Lcom/newspaperdirect/pressreader/android/DataAccess$DataAccessListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataAccess.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/DataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataAccessListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/DataAccess;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/DataAccess;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/DataAccess$DataAccessListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/DataAccess;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/DataAccess;Lcom/newspaperdirect/pressreader/android/DataAccess$DataAccessListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/DataAccess$DataAccessListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/DataAccess;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 54
    if-nez p2, :cond_1

    .line 55
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/DataAccess$DataAccessListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/DataAccess;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030004

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, result:Landroid/view/View;
    :goto_0
    if-nez p1, :cond_0

    .line 62
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 63
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v4, "data_access_wifi"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, isChecked:Z
    const v4, 0x7f0c000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 65
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #isChecked:Z
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    return-object v3

    .line 58
    .end local v3           #result:Landroid/view/View;
    :cond_1
    move-object v3, p2

    .restart local v3       #result:Landroid/view/View;
    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 76
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "data_access_wifi"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method
