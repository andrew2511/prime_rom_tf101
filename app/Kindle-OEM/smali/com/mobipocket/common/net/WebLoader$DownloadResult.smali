.class public Lcom/mobipocket/common/net/WebLoader$DownloadResult;
.super Ljava/lang/Object;
.source "WebLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/net/WebLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadResult"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public data:[B

.field public length:I

.field public responseCode:I

.field final synthetic this$0:Lcom/mobipocket/common/net/WebLoader;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/net/WebLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/mobipocket/common/net/WebLoader$DownloadResult;->this$0:Lcom/mobipocket/common/net/WebLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    return-void
.end method
