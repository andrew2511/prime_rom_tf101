.class public Lcom/android/calendar/EmailAddressAdapter;
.super Lcom/android/common/contacts/BaseEmailAddressAdapter;
.source "EmailAddressAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "directoryType"
    .parameter "directoryName"
    .parameter "displayName"
    .parameter "emailAddress"

    .prologue
    .line 55
    const v2, 0x7f0e0079

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, text1:Landroid/widget/TextView;
    const v2, 0x7f0e007a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, text2:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method protected bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "directoryType"
    .parameter "directoryName"

    .prologue
    .line 63
    const v2, 0x7f0e0079

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, text1:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/calendar/EmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a008b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p2

    :goto_0
    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, text:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void

    .end local v0           #text:Ljava/lang/String;
    :cond_0
    move-object v6, p3

    .line 64
    goto :goto_0
.end method

.method protected inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
