.class Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/settings/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/settings/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/settings/SettingsActivity;Lcom/amazon/kcp/settings/SettingsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;-><init>(Lcom/amazon/kcp/settings/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v0}, Lcom/amazon/kcp/settings/SettingsActivity;->access$200(Lcom/amazon/kcp/settings/SettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v0}, Lcom/amazon/kcp/settings/SettingsActivity;->access$200(Lcom/amazon/kcp/settings/SettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 264
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v1}, Lcom/amazon/kcp/settings/SettingsActivity;->access$200(Lcom/amazon/kcp/settings/SettingsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    .line 283
    .local v0, item:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$500()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v1}, Lcom/amazon/kcp/settings/SettingsActivity;->access$1000(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->TWO_LINES:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    invoke-virtual {v1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->ordinal()I

    move-result v1

    .line 288
    :goto_0
    return v1

    .line 285
    :cond_0
    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SINGLE_LINE:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    invoke-virtual {v1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->ordinal()I

    move-result v1

    goto :goto_0

    .line 288
    :cond_1
    iget-object v1, v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->viewType:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    invoke-virtual {v1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x1020014

    const v8, 0x1020015

    const/4 v7, 0x0

    .line 294
    if-nez p2, :cond_0

    .line 296
    sget-object v3, Lcom/amazon/kcp/settings/SettingsActivity$5;->$SwitchMap$com$amazon$kcp$settings$SettingsActivity$SettingsViewType:[I

    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->values()[Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->getItemViewType(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 308
    iget-object v3, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090003

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 313
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    .line 314
    .local v1, item:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->text1:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 316
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$500()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v3

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v3}, Lcom/amazon/kcp/settings/SettingsActivity;->access$1000(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    iget-object v3, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    const v4, 0x7f0b008d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v6}, Lcom/amazon/kcp/settings/SettingsActivity;->access$1000(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kcp/application/AuthenticationManager;->getUserName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, text:Ljava/lang/CharSequence;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b008e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 320
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .end local v2           #text:Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v3, 0x7f0c003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 332
    .local v0, checkbox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_2

    .line 334
    iget-object v3, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v3, v1, v0}, Lcom/amazon/kcp/settings/SettingsActivity;->access$1100(Lcom/amazon/kcp/settings/SettingsActivity;Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/widget/CheckBox;)V

    .line 335
    new-instance v3, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$1;-><init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 344
    new-instance v3, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter$2;-><init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    :cond_2
    return-object p2

    .line 299
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #item:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    :pswitch_0
    iget-object v3, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030027

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 300
    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v3, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090004

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 303
    goto/16 :goto_0

    .line 305
    :pswitch_2
    iget-object v3, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000f

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 306
    goto/16 :goto_0

    .line 322
    .restart local v1       #item:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$600()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v3

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v3}, Lcom/amazon/kcp/settings/SettingsActivity;->access$1000(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 324
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v4}, Lcom/amazon/kcp/settings/SettingsActivity;->access$1000(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/AuthenticationManager;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 326
    :cond_4
    iget v3, v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->text2:I

    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->text2:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->values()[Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v1}, Lcom/amazon/kcp/settings/SettingsActivity;->access$200(Lcom/amazon/kcp/settings/SettingsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    .line 366
    .local v0, item:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$600()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->viewType:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    sget-object v2, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
