.class Lcom/amazon/kcp/library/models/CLibrary$5;
.super Ljava/lang/Object;
.source "CLibrary.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/CLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/CLibrary;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/CLibrary;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CLibrary$5;->this$0:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 1
    .parameter "metadataIndex"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary$5;->this$0:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->access$700(Lcom/amazon/kcp/library/models/CLibrary;I)V

    .line 137
    return-void
.end method
