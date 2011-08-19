.class Lcom/google/android/backup/SetBackupAccountActivity$2;
.super Ljava/lang/Object;
.source "SetBackupAccountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/backup/SetBackupAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/backup/SetBackupAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/backup/SetBackupAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/backup/SetBackupAccountActivity$2;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/backup/SetBackupAccountActivity$2;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v2, v0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/backup/SetBackupAccountActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 138
    return-void
.end method
