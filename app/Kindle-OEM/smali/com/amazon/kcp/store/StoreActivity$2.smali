.class Lcom/amazon/kcp/store/StoreActivity$2;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreActivity;
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
    .line 130
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreActivity$2;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$2;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreActivity;->access$100(Lcom/amazon/kcp/store/StoreActivity;)V

    .line 135
    return-void
.end method
