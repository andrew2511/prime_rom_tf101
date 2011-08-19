.class final Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$1;
.super Ljava/lang/Object;
.source "DownloadBookWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;->getNewCDEDownloadErrorDescriber(Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/models/internal/TodoItem;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$1;->val$todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$1;->val$todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setServerFailureCode(Ljava/lang/String;)V

    .line 154
    return-void
.end method
