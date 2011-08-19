.class Lcom/amazon/kcp/library/ArchivedItemsActivity$1;
.super Ljava/lang/Object;
.source "ArchivedItemsActivity.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ArchivedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ArchivedItemsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ArchivedItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity$1;->this$0:Lcom/amazon/kcp/library/ArchivedItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 2
    .parameter

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/kcp/library/ArchivedItemsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bookcountChanged fired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity$1;->this$0:Lcom/amazon/kcp/library/ArchivedItemsActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->showTipIfNecessary()V

    .line 42
    return-void
.end method
