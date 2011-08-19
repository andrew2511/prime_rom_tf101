.class Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Subscriptions.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/Subscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionsListAdapter"
.end annotation


# instance fields
.field private mFlag:Z

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/Subscriptions;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 113
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;

    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 88
    iput-object v4, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mSubscriptions:Ljava/util/List;

    .line 89
    iput-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mFlag:Z

    .line 92
    const-string v0, ""

    const v1, 0x7f09000b

    invoke-virtual {p1, v1}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/newspaperdirect/pressreader/android/Subscriptions;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 93
    iget-object v0, p1, Lcom/newspaperdirect/pressreader/android/Subscriptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 94
    iget-object v0, p1, Lcom/newspaperdirect/pressreader/android/Subscriptions;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$1;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 100
    new-instance v0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 112
    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mFlag:Z

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mFlag:Z

    return v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mSubscriptions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->loadSubscriptionsFromServer()V

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Lcom/newspaperdirect/pressreader/android/Subscriptions;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;

    return-object v0
.end method

.method private loadSubscriptionsFromServer()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    .line 117
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$3;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setNegativeResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 147
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mSubscriptions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mSubscriptions:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mSubscriptions:Ljava/util/List;

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
    .line 160
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 178
    if-nez p2, :cond_1

    .line 179
    if-nez p1, :cond_0

    .line 180
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030004

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 187
    .local v2, result:Landroid/view/View;
    :goto_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "auto_delivery"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 188
    .local v1, isChecked:Z
    if-nez p1, :cond_2

    .line 190
    const v4, 0x7f0c000d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 191
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v4, 0x7f090095

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local p0
    :goto_1
    move-object v4, v2

    .line 203
    :goto_2
    return-object v4

    .line 182
    .end local v1           #isChecked:Z
    .end local v2           #result:Landroid/view/View;
    .restart local p0
    :cond_0
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001b

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2       #result:Landroid/view/View;
    goto :goto_0

    .line 185
    .end local v2           #result:Landroid/view/View;
    :cond_1
    move-object v2, p2

    .restart local v2       #result:Landroid/view/View;
    goto :goto_0

    .line 196
    .restart local v1       #isChecked:Z
    :cond_2
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mSubscriptions:Ljava/util/List;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    .line 197
    :cond_3
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->mSubscriptions:Ljava/util/List;

    const/4 v5, 0x1

    sub-int v5, p1, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/Subscription;

    .line 198
    .local v3, sub:Lcom/newspaperdirect/pressreader/android/core/Subscription;
    const v4, 0x7f0c0074

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v4, 0x7f0c0075

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const v4, 0x7f0c0076

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x2

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 211
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 212
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "auto_delivery"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method
