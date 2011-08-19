.class final Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$4;
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
.field final synthetic val$messages:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$4;->val$messages:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$4;->val$messages:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->setLinkURL(Ljava/lang/String;)V

    .line 181
    return-void
.end method
