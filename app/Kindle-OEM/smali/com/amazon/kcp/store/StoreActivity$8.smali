.class Lcom/amazon/kcp/store/StoreActivity$8;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreActivity;->showStoreUnavailableMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreActivity$8;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$8;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreActivity;->finish()V

    .line 686
    return-void
.end method
