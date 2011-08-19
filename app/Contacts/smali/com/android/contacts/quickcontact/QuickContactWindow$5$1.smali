.class Lcom/android/contacts/quickcontact/QuickContactWindow$5$1;
.super Landroid/widget/BaseAdapter;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactWindow$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactWindow$5;

.field final synthetic val$actions:[Lcom/android/contacts/quickcontact/Action;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactWindow$5;[Lcom/android/contacts/quickcontact/Action;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactWindow$5;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5$1;->val$actions:[Lcom/android/contacts/quickcontact/Action;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5$1;->val$actions:[Lcom/android/contacts/quickcontact/Action;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5$1;->val$actions:[Lcom/android/contacts/quickcontact/Action;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1032
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1047
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 1051
    .local v1, result:Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5$1;->val$actions:[Lcom/android/contacts/quickcontact/Action;

    aget-object v0, v4, p1

    .line 1053
    .local v0, defaultAction:Lcom/android/contacts/quickcontact/Action;
    const v4, 0x1020014

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1054
    .local v2, text1:Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1056
    .local v3, text2:Landroid/widget/TextView;
    invoke-interface {v0}, Lcom/android/contacts/quickcontact/Action;->getHeader()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    invoke-interface {v0}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1060
    return-object v1

    .line 1047
    .end local v0           #defaultAction:Lcom/android/contacts/quickcontact/Action;
    .end local v1           #result:Landroid/view/View;
    .end local v2           #text1:Landroid/widget/TextView;
    .end local v3           #text2:Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactWindow$5;

    iget-object v4, v4, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$700(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040036

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1042
    const/4 v0, 0x0

    return v0
.end method
