.class Lcom/nuance/xt9/input/IME$2;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/IME;->showSymbolTable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/nuance/xt9/input/IME$2;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$2;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v0, v0, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 252
    return-void
.end method
