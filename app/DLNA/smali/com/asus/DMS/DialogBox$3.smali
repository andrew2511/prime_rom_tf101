.class Lcom/asus/DMS/DialogBox$3;
.super Ljava/lang/Object;
.source "DialogBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DMS/DialogBox;->OKExit(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DMS/DialogBox;


# direct methods
.method constructor <init>(Lcom/asus/DMS/DialogBox;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/asus/DMS/DialogBox$3;->this$0:Lcom/asus/DMS/DialogBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DMS/DialogBox$3;->this$0:Lcom/asus/DMS/DialogBox;

    invoke-virtual {v0}, Lcom/asus/DMS/DialogBox;->Finish()V

    .line 77
    return-void
.end method
