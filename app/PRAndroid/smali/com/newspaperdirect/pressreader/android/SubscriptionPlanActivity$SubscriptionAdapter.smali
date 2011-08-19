.class Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubscriptionPlanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mPlanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;>;"
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    .line 99
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->mPlanList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->mPlanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->mPlanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->mPlanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;

    move-object v0, p0

    .line 115
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->getItem(I)Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convert"
    .parameter "group"

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->getItem(I)Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;

    move-result-object v10

    .line 129
    .local v10, plan:Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;
    if-nez v10, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v11, v0

    const v12, 0x7f03001e

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object/from16 v6, p2

    .line 151
    .end local p2
    .local v6, convert:Landroid/view/View;
    :goto_0
    return-object v6

    .line 133
    .end local v6           #convert:Landroid/view/View;
    .restart local p2
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v11, v0

    const v12, 0x7f03001d

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 134
    iget-object v11, v10, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->IssueBalance:Ljava/lang/String;

    const-string v12, "10000"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 135
    const v11, 0x7f0c007c

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_1
    const v11, 0x7f0c007a

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 138
    .local v9, name:Landroid/widget/TextView;
    const v11, 0x7f0c007b

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 139
    .local v8, fee:Landroid/widget/TextView;
    const v11, 0x7f0c007d

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 140
    .local v2, additional:Landroid/widget/TextView;
    const v11, 0x7f0c007e

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 141
    .local v5, back:Landroid/widget/TextView;
    const v11, 0x7f0c007f

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 142
    .local v7, downloads:Landroid/widget/TextView;
    const v11, 0x7f0c0081

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    .local v3, advalue:Landroid/widget/TextView;
    const v11, 0x7f0c0080

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 144
    .local v4, alerts:Landroid/widget/TextView;
    iget-object v11, v10, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->Name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->Price:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "<sup>*</sup>"

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v11, v10, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->AdditionalIssuesPrice:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    move-object v11, v0

    const v12, 0x7f0900d8

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v10, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->BackIssues:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v11, v10, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->AutoDownloads:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v11, v10, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->ReadingMap:Ljava/lang/String;

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const v11, 0x7f09005d

    :goto_1
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v11, v10, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->Alerts:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v6, p2

    .line 151
    .end local p2
    .restart local v6       #convert:Landroid/view/View;
    goto/16 :goto_0

    .line 149
    .end local v6           #convert:Landroid/view/View;
    .restart local p2
    :cond_2
    const v11, 0x7f09005f

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;->mPlanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
