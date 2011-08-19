.class Lcom/asus/reader/book/DrmBookFulfillmentActivity$7;
.super Ljava/lang/Object;
.source "DrmBookFulfillmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/DrmBookFulfillmentActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$7;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$7;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const-class v2, Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$7;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-virtual {v1, v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 487
    return-void
.end method
