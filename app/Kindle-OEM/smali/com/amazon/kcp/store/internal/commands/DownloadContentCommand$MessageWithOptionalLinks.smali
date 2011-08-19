.class public Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;
.super Ljava/lang/Object;
.source "DownloadContentCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageWithOptionalLinks"
.end annotation


# instance fields
.field private isCDEDownloadError:Z

.field private linkTitle:Ljava/lang/String;

.field private linkURL:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->title:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->message:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->linkURL:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->linkTitle:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->isCDEDownloadError:Z

    return-void
.end method


# virtual methods
.method public getLinkTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->linkTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->linkURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCDEDownloadError()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->isCDEDownloadError:Z

    return v0
.end method

.method public setCDEDownloadError(Z)V
    .locals 0
    .parameter "isCDEDownloadError"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->isCDEDownloadError:Z

    .line 120
    return-void
.end method

.method public setLinkTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "linkTitle"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->linkTitle:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setLinkURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->linkURL:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->message:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->title:Ljava/lang/String;

    .line 63
    return-void
.end method
