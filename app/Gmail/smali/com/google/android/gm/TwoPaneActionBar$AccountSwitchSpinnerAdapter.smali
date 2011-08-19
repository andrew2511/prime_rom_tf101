.class Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TwoPaneActionBar.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TwoPaneActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSwitchSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/SpinnerAdapter;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActionBar;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/TwoPaneActionBar;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "accounts"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    .line 586
    const v0, 0x7f040002

    const v1, 0x7f0e000d

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 587
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;->setDropDownViewResource(I)V

    .line 588
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    .line 604
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 605
    .local v1, dropDownItemView:Landroid/view/View;
    const v7, 0x7f0e000f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 606
    .local v6, unreadView:Landroid/widget/TextView;
    const v7, 0x7f0e000e

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 609
    .local v4, inboxView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-static {v7}, Lcom/google/android/gm/TwoPaneActionBar;->access$000(Lcom/google/android/gm/TwoPaneActionBar;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, p1

    .line 610
    .local v0, accountName:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-static {v7}, Lcom/google/android/gm/TwoPaneActionBar;->access$700(Lcom/google/android/gm/TwoPaneActionBar;)Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-static {v7}, Lcom/google/android/gm/TwoPaneActionBar;->access$700(Lcom/google/android/gm/TwoPaneActionBar;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gm/provider/Label;

    move-object v2, v7

    .line 612
    .local v2, inboxLabel:Lcom/google/android/gm/provider/Label;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 613
    .local v3, inboxName:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    if-eqz v2, :cond_3

    .line 616
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getNumUnreadConversations()I

    move-result v5

    .line 618
    .local v5, unreadCount:I
    if-lez v5, :cond_2

    .line 619
    iget-object v7, p0, Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-static {v7}, Lcom/google/android/gm/TwoPaneActionBar;->access$400(Lcom/google/android/gm/TwoPaneActionBar;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/google/android/gm/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    .end local v5           #unreadCount:I
    :goto_2
    return-object v1

    .line 610
    .end local v2           #inboxLabel:Lcom/google/android/gm/provider/Label;
    .end local v3           #inboxName:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    move-object v2, v7

    goto :goto_0

    .line 612
    .restart local v2       #inboxLabel:Lcom/google/android/gm/provider/Label;
    :cond_1
    const-string v7, ""

    move-object v3, v7

    goto :goto_1

    .line 622
    .restart local v3       #inboxName:Ljava/lang/String;
    .restart local v5       #unreadCount:I
    :cond_2
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 626
    .end local v5           #unreadCount:I
    :cond_3
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 592
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 593
    .local v1, item:Landroid/view/View;
    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 594
    .local v0, accountName:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-static {v2}, Lcom/google/android/gm/TwoPaneActionBar;->access$400(Lcom/google/android/gm/TwoPaneActionBar;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 596
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x1

    return v0
.end method
