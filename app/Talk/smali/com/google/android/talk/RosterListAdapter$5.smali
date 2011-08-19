.class Lcom/google/android/talk/RosterListAdapter$5;
.super Lcom/google/android/talk/RosterListAdapter$Bind;
.source "RosterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListAdapter;->makeHeaderMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;

.field final synthetic val$string:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListAdapter;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$5;->this$0:Lcom/google/android/talk/RosterListAdapter;

    iput p2, p0, Lcom/google/android/talk/RosterListAdapter$5;->val$string:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/RosterListAdapter$Bind;-><init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 429
    invoke-static {p1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 430
    .local v0, t:Landroid/widget/TextView;
    iget v1, p0, Lcom/google/android/talk/RosterListAdapter$5;->val$string:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 431
    return-void
.end method

.method public onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/google/android/talk/RosterListAdapter$5;->indent(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V

    .line 426
    return-void
.end method
