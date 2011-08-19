.class public Lcom/android/contacts/list/CustomContactListFilterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/ContactsActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# static fields
.field private static sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

.field private mDisplayPhones:Landroid/widget/CheckBox;

.field private mHeaderPhones:Landroid/view/View;

.field private mHeaderSeparator:Landroid/view/View;

.field private mList:Landroid/widget/ExpandableListView;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 902
    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/CustomContactListFilterActivity;)Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    return-object v0
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private createDisplayGroupHeader(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    .line 153
    const v1, 0x7f040030

    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderSeparator:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderSeparator:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 155
    .local v0, text1:Landroid/widget/TextView;
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    return-void
.end method

.method private createWithPhonesOnlyPreferenceView(Landroid/view/LayoutInflater;)V
    .locals 6
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "only_phones"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 136
    .local v0, optionSelected:Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_0
    const v3, 0x7f04000f

    iget-object v4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderPhones:Landroid/view/View;

    .line 142
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderPhones:Landroid/view/View;

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 143
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderPhones:Landroid/view/View;

    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    .line 144
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderPhones:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    .local v1, text1:Landroid/widget/TextView;
    const v3, 0x7f0c0053

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderPhones:Landroid/view/View;

    const v4, 0x1020015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 148
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private doSaveAction()V
    .locals 4

    .prologue
    .line 878
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-static {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$500(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    if-nez v1, :cond_1

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    .line 896
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 884
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setDisplayOnlyPhones(Z)V

    .line 887
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setResult(I)V

    .line 889
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-static {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$500(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v0

    .line 890
    .local v0, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 891
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0

    .line 895
    :cond_3
    new-instance v1, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I
    .locals 2
    .parameter "account"

    .prologue
    .line 769
    const-string v0, "com.google"

    iget-object v1, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const/4 v0, 0x2

    .line 772
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleRemoveSync(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 6
    .parameter "account"
    .parameter "child"
    .parameter "syncMode"
    .parameter "title"

    .prologue
    const/4 v5, 0x0

    .line 821
    iget-object v3, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v2

    .line 822
    .local v2, shouldSyncUngrouped:Z
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 825
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 826
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c010a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, removeMessage:Ljava/lang/CharSequence;
    const v3, 0x7f0c0105

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 829
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 830
    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 831
    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/list/CustomContactListFilterActivity$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$3;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 839
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 845
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #removeMessage:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 842
    :cond_0
    invoke-virtual {p1, p2, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 843
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->doSaveAction()V

    .line 874
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 747
    const v3, 0x1020001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 749
    .local v1, checkbox:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3, p3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 750
    .local v0, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 751
    .local v2, child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v2, :cond_0

    .line 752
    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 753
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->putVisible(Z)V

    .line 758
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 756
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 713
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 723
    :goto_0
    return-void

    .line 715
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->doSaveAction()V

    goto :goto_0

    .line 719
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0

    .line 713
    :pswitch_data_0
    .packed-switch 0x7f07004c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v1, 0x7f04000e

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setContentView(I)V

    .line 106
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    .line 107
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 109
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 110
    new-instance v1, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    .line 112
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->createWithPhonesOnlyPreferenceView(Landroid/view/LayoutInflater;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->createDisplayGroupHeader(Landroid/view/LayoutInflater;)V

    .line 117
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderPhones:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderPhones:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 119
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderSeparator:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 122
    :cond_0
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 129
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 130
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 779
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 782
    instance-of v7, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-nez v7, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    move-object v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v5, v0

    .line 785
    .local v5, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    .line 786
    .local v4, groupPosition:I
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    .line 789
    .local v3, childPosition:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 791
    iget-object v7, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v7, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 792
    .local v1, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v7, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v7, v4, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 795
    .local v2, child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I

    move-result v6

    .line 796
    .local v6, syncMode:I
    if-eqz v6, :cond_0

    .line 798
    if-eqz v2, :cond_2

    .line 799
    invoke-virtual {p0, p1, v1, v2, v6}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V

    goto :goto_0

    .line 801
    :cond_2
    invoke-virtual {p0, p1, v1, v6}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
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
    .line 704
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "CustomContactListFilterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnItemClick, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mHeaderPhones:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 709
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;>;"
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 256
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    check-cast p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;>;"
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 261
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 245
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 246
    return-void
.end method

.method protected setDisplayOnlyPhones(Z)V
    .locals 2
    .parameter "displayOnlyPhones"

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 732
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 733
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "only_phones"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 734
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 736
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setChildDescripWithPhones(Z)V

    .line 737
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 738
    return-void
.end method

.method protected showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V
    .locals 5
    .parameter "menu"
    .parameter "account"
    .parameter "syncMode"

    .prologue
    .line 848
    const v3, 0x7f0c0106

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 851
    iget-object v3, p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 852
    .local v0, child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v3

    if-nez v3, :cond_0

    .line 853
    invoke-virtual {v0, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 854
    .local v2, title:Ljava/lang/CharSequence;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/list/CustomContactListFilterActivity$4;

    invoke-direct {v4, p0, v0, p3, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$4;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 868
    .end local v0           #child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .end local v2           #title:Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method protected showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V
    .locals 7
    .parameter "menu"
    .parameter "account"
    .parameter "child"
    .parameter "syncMode"

    .prologue
    .line 807
    invoke-virtual {p3, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 809
    .local v5, title:Ljava/lang/CharSequence;
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 810
    const v0, 0x7f0c0105

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$2;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 817
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 964
    if-eqz p4, :cond_0

    .line 965
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ContactsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
