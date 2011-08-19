.class Lcom/google/android/talk/RosterListAdapter$3;
.super Lcom/google/android/talk/RosterListAdapter$Bind;
.source "RosterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListAdapter;->makeSpacerMergeItem()Lcom/google/android/talk/RosterListAdapter$MergeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$3;->this$0:Lcom/google/android/talk/RosterListAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/RosterListAdapter$Bind;-><init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 380
    return-void
.end method

.method public onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 384
    invoke-static {p1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/talk/DividerDrawingListItem;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/DividerDrawingListItem;->setShoverEnabled(Z)V

    .line 385
    return-void
.end method
