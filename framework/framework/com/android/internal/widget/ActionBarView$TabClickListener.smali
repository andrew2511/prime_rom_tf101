.class Lcom/android/internal/widget/ActionBarView$TabClickListener;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .registers 2
    .parameter

    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$TabClickListener;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 954
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView$TabClickListener;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 956
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ActionBarView$TabView;

    move-object v4, v0

    .line 957
    .local v4, tabView:Lcom/android/internal/widget/ActionBarView$TabView;
    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->select()V

    .line 958
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$TabClickListener;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 959
    .local v3, tabCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v3, :cond_2d

    .line 960
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$TabClickListener;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 961
    .local v1, child:Landroid/view/View;
    if-ne v1, p1, :cond_2b

    const/4 v5, 0x1

    :goto_25
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 959
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 961
    :cond_2b
    const/4 v5, 0x0

    goto :goto_25

    .line 963
    .end local v1           #child:Landroid/view/View;
    :cond_2d
    return-void
.end method
