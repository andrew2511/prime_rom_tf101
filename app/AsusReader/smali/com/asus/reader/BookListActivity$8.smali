.class Lcom/asus/reader/BookListActivity$8;
.super Ljava/lang/Object;
.source "BookListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/BookListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/BookListActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$8;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$8;->this$0:Lcom/asus/reader/BookListActivity;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    .line 1403
    return-void
.end method
