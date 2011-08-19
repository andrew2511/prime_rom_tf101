.class public Lcom/splashtop/remote/ServerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ServerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/ServerListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/splashtop/remote/bean/MacBean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/MacBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/splashtop/remote/bean/MacBean;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    iput-object p1, p0, Lcom/splashtop/remote/ServerListAdapter;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcom/splashtop/remote/ServerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/ServerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/ServerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/splashtop/remote/bean/MacBean;

    .line 52
    .local v2, mb:Lcom/splashtop/remote/bean/MacBean;
    if-nez v2, :cond_0

    move-object v5, v7

    .line 105
    :goto_0
    return-object v5

    .line 53
    :cond_0
    if-nez p2, :cond_3

    .line 54
    new-instance v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;-><init>()V

    .line 55
    .local v1, holder:Lcom/splashtop/remote/ServerListAdapter$ViewHolder;
    iget-object v5, p0, Lcom/splashtop/remote/ServerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000d

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    const v5, 0x7f090023

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 57
    const v5, 0x7f090024

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 58
    const v5, 0x7f090025

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 59
    const v5, 0x7f090026

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->addr:Landroid/widget/TextView;

    .line 60
    const v5, 0x7f090027

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->btnLayout:Landroid/widget/RelativeLayout;

    .line 61
    const v5, 0x7f090028

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->btn:Landroid/widget/ImageButton;

    .line 62
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->btn:Landroid/widget/ImageButton;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->btn:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 63
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_1
    invoke-virtual {v2}, Lcom/splashtop/remote/bean/MacBean;->getMacName()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, addr:Ljava/lang/String;
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->addr:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->addr:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-virtual {v2}, Lcom/splashtop/remote/bean/MacBean;->getMacOnline()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 75
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v6, 0x7f020067

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-virtual {v2}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 77
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v6, 0x7f07003f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, str:Ljava/lang/String;
    const-string v5, "%s"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_2

    .line 81
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const-string v6, "%s"

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->addr:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    .end local v4           #str:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->btnLayout:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/splashtop/remote/ServerListAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/splashtop/remote/ServerListAdapter$1;-><init>(Lcom/splashtop/remote/ServerListAdapter;Lcom/splashtop/remote/bean/MacBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->btn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/splashtop/remote/ServerListAdapter$2;

    invoke-direct {v6, p0, v2}, Lcom/splashtop/remote/ServerListAdapter$2;-><init>(Lcom/splashtop/remote/ServerListAdapter;Lcom/splashtop/remote/bean/MacBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v5, p2

    .line 105
    goto/16 :goto_0

    .line 65
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #holder:Lcom/splashtop/remote/ServerListAdapter$ViewHolder;
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/splashtop/remote/ServerListAdapter$ViewHolder;
    goto :goto_1

    .line 85
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    :cond_4
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 88
    :cond_5
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v6, 0x7f020068

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v6, 0x7f07001b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v5, v1, Lcom/splashtop/remote/ServerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method
