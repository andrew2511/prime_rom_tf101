.class Lcom/google/android/talk/fragments/RosterListFragment$1;
.super Ljava/lang/Object;
.source "RosterListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/RosterListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/RosterListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/RosterListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/talk/fragments/RosterListFragment$1;->this$0:Lcom/google/android/talk/fragments/RosterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment$1;->this$0:Lcom/google/android/talk/fragments/RosterListFragment;

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v2, v0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/talk/fragments/RosterListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 114
    return-void
.end method
