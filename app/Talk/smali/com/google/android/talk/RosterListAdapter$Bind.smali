.class abstract Lcom/google/android/talk/RosterListAdapter$Bind;
.super Ljava/lang/Object;
.source "RosterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Bind"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/RosterListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$Bind;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter$Bind;-><init>(Lcom/google/android/talk/RosterListAdapter;)V

    return-void
.end method


# virtual methods
.method public abstract bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
.end method

.method protected indent(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$Bind;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$1000(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$Bind;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$1400(Lcom/google/android/talk/RosterListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 194
    .local v0, shoveDistance:I
    invoke-static {p1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 197
    .end local v0           #shoveDistance:I
    :cond_0
    return-void
.end method

.method public abstract onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
.end method
