.class public Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 565
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 566
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 567
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 568
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 569
    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 641
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 642
    .local v0, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 644
    .local v1, validChild:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 645
    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 647
    :goto_1
    return-object v2

    .line 642
    .end local v1           #validChild:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 647
    .restart local v1       #validChild:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildId(II)J
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 654
    .local v0, child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 656
    .local v1, childId:Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 658
    .end local v1           #childId:Ljava/lang/Long;
    :cond_0
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 609
    if-nez p4, :cond_0

    .line 610
    iget-object v7, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 614
    :cond_0
    const v7, 0x1020014

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 615
    .local v5, text1:Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 616
    .local v6, text2:Landroid/widget/TextView;
    const v7, 0x1020001

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 618
    .local v1, checkbox:Landroid/widget/CheckBox;
    iget-object v7, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v7, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 619
    .local v0, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 620
    .local v2, child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v2, :cond_1

    .line 622
    invoke-virtual {v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getVisible()Z

    move-result v4

    .line 623
    .local v4, groupVisible:Z
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 624
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 626
    iget-object v7, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 627
    .local v3, groupTitle:Ljava/lang/CharSequence;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    .end local v3           #groupTitle:Ljava/lang/CharSequence;
    .end local v4           #groupVisible:Z
    :goto_0
    return-object p4

    .line 631
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 632
    const v7, 0x7f0c0107

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 633
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 5
    .parameter "groupPosition"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 665
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 666
    .local v0, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v1, v4

    .line 667
    .local v1, anyHidden:Z
    :goto_0
    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v1, :cond_0

    move v3, v4

    :cond_0
    add-int/2addr v2, v3

    return v2

    .end local v1           #anyHidden:Z
    :cond_1
    move v1, v3

    .line 666
    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_0

    .line 678
    const/4 v0, 0x0

    .line 680
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 685
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 587
    if-nez p3, :cond_0

    .line 588
    iget-object v4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040017

    invoke-virtual {v4, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 592
    :cond_0
    const v4, 0x1020014

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 593
    .local v2, text1:Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 595
    .local v3, text2:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 597
    .local v0, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v5, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 599
    .local v1, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v4, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v4, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    if-nez v4, :cond_1

    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    iget-object v4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    return-object p3

    :cond_1
    move v4, v6

    .line 600
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 573
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 574
    return-void
.end method

.method public setChildDescripWithPhones(Z)V
    .locals 0
    .parameter "withPhones"

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 582
    return-void
.end method
