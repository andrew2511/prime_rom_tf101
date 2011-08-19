.class public Lcom/layar/adapters/ArSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArSettingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/ArSettingAdapter$ArSetting;,
        Lcom/layar/adapters/ArSettingAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/adapters/ArSettingAdapter$ArSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/adapters/ArSettingAdapter;->mItems:Ljava/util/ArrayList;

    .line 36
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/ArSettingAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/ArSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method

.method private set(Ljava/lang/String;Z)V
    .locals 1
    .parameter "prefKey"
    .parameter "value"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/layar/adapters/ArSettingAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;IZ)V
    .locals 3
    .parameter "prefKey"
    .parameter "title"
    .parameter "defValue"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/layar/adapters/ArSettingAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    .local v0, isOn:Z
    iget-object v1, p0, Lcom/layar/adapters/ArSettingAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/layar/adapters/ArSettingAdapter$ArSetting;

    invoke-direct {v2, p1, p2, v0}, Lcom/layar/adapters/ArSettingAdapter$ArSetting;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/layar/adapters/ArSettingAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/layar/adapters/ArSettingAdapter$ArSetting;
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/layar/adapters/ArSettingAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/adapters/ArSettingAdapter$ArSetting;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/layar/adapters/ArSettingAdapter;->getItem(I)Lcom/layar/adapters/ArSettingAdapter$ArSetting;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/layar/adapters/ArSettingAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/adapters/ArSettingAdapter$ArSetting;

    iget v0, p0, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->title:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 73
    if-nez p2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/layar/adapters/ArSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030035

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;-><init>(Lcom/layar/adapters/ArSettingAdapter$ViewHolder;)V

    .line 76
    .local v0, holder:Lcom/layar/adapters/ArSettingAdapter$ViewHolder;
    const v2, 0x7f07008f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 77
    const v2, 0x7f07004c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 79
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Lcom/layar/adapters/ArSettingAdapter;->getItem(I)Lcom/layar/adapters/ArSettingAdapter$ArSetting;

    move-result-object v1

    .line 85
    .local v1, item:Lcom/layar/adapters/ArSettingAdapter$ArSetting;
    iget-object v2, v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget v3, v1, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v2, v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-boolean v3, v1, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->isOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iput-object v1, v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;->item:Lcom/layar/adapters/ArSettingAdapter$ArSetting;

    .line 89
    return-object p2

    .line 82
    .end local v0           #holder:Lcom/layar/adapters/ArSettingAdapter$ViewHolder;
    .end local v1           #item:Lcom/layar/adapters/ArSettingAdapter$ArSetting;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/layar/adapters/ArSettingAdapter$ViewHolder;
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;

    .line 95
    .local v0, holder:Lcom/layar/adapters/ArSettingAdapter$ViewHolder;
    iget-object v1, v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;->item:Lcom/layar/adapters/ArSettingAdapter$ArSetting;

    .line 96
    .local v1, item:Lcom/layar/adapters/ArSettingAdapter$ArSetting;
    iget-boolean v2, v1, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->isOn:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->isOn:Z

    .line 97
    iget-object v2, v1, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->prefKey:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->isOn:Z

    invoke-direct {p0, v2, v3}, Lcom/layar/adapters/ArSettingAdapter;->set(Ljava/lang/String;Z)V

    .line 99
    iget-object v2, v0, Lcom/layar/adapters/ArSettingAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-boolean v3, v1, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->isOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    return-void

    .line 96
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
