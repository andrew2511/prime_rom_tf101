.class Lcom/android/internal/widget/ActionBarView$TabView;
.super Landroid/widget/LinearLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabView"
.end annotation


# instance fields
.field private mTab:Landroid/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar$Tab;)V
    .registers 13
    .parameter "context"
    .parameter "tab"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x10

    const/4 v9, -0x2

    .line 909
    const v6, 0x10102f3

    invoke-direct {p0, p1, v8, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 910
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 912
    invoke-virtual {p2}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 913
    .local v0, custom:Landroid/view/View;
    if-eqz v0, :cond_21

    .line 914
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$TabView;->addView(Landroid/view/View;)V

    .line 945
    :cond_15
    :goto_15
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x3f80

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    return-void

    .line 918
    :cond_21
    invoke-virtual {p2}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 919
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 921
    .local v4, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_40

    .line 922
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 923
    .local v2, iconView:Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 924
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 926
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 927
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView$TabView;->addView(Landroid/view/View;)V

    .line 931
    .end local v2           #iconView:Landroid/widget/ImageView;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_40
    if-eqz v4, :cond_15

    .line 932
    new-instance v5, Landroid/widget/TextView;

    const v6, 0x10102f5

    invoke-direct {v5, p1, v8, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 934
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 936
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 937
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 939
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 940
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 941
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarView$TabView;->addView(Landroid/view/View;)V

    goto :goto_15
.end method


# virtual methods
.method public getTab()Landroid/app/ActionBar$Tab;
    .registers 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method
