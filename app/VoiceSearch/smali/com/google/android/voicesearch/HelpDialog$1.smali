.class Lcom/google/android/voicesearch/HelpDialog$1;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/HelpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$000(Lcom/google/android/voicesearch/HelpDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Gallery;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    .line 149
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 150
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$200(Lcom/google/android/voicesearch/HelpDialog;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
