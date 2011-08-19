.class Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;
.super Landroid/database/DataSetObserver;
.source "LabelListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelListFragment$LabelsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/gm/LabelListFragment$LabelsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;->this$1:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;->this$1:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method
