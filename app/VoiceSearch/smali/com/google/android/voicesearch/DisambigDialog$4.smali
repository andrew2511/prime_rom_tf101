.class Lcom/google/android/voicesearch/DisambigDialog$4;
.super Ljava/lang/Object;
.source "DisambigDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/DisambigDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/DisambigDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/DisambigDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/voicesearch/DisambigDialog$4;->this$0:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 106
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$4;->this$0:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/DisambigDialog;->access$000(Lcom/google/android/voicesearch/DisambigDialog;)Lcom/google/android/voicesearch/DisambigDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$4;->this$0:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/DisambigDialog;->access$000(Lcom/google/android/voicesearch/DisambigDialog;)Lcom/google/android/voicesearch/DisambigDialog$Listener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/android/voicesearch/DisambigDialog$Listener;->onActionSelected(I)V

    .line 109
    :cond_0
    return-void
.end method
